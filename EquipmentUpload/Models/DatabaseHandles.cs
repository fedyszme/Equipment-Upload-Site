using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EquipmentUpload.Models
{
    public class DatabaseHandles
    {
        //set up methods to connect to SQL Server and Excel


        //SQL Server Connection
        private SqlConnection con;
        private void connectionToSQL()
        {
            string conString = ConfigurationManager.ConnectionStrings["SQLEquipmentConn"].ToString();
            con = new SqlConnection(conString);
        }


        //Excel Connection & Create Datatable
        public void ReadExcel(string filePath, string extension, out DataTable dt)
        {
            string conString = string.Empty;
            switch (extension)
            {
                case ".xls": //Excel 97-03.
                    conString = ConfigurationManager.ConnectionStrings["Excel03ConString"].ConnectionString;
                    break;
                case ".xlsx": //Excel 07 and above.
                    conString = ConfigurationManager.ConnectionStrings["Excel07ConString"].ConnectionString;
                    break;
            }

            dt = new DataTable();
            conString = string.Format(conString, filePath);

            using (OleDbConnection connExcel = new OleDbConnection(conString))
            {
                using (OleDbCommand cmdExcel = new OleDbCommand())
                {
                    using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
                    {
                        cmdExcel.Connection = connExcel;

                        //Get the name of First Sheet.
                        connExcel.Open();
                        DataTable dtExcelSchema;
                        dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
                        string sheetName = dtExcelSchema.Rows[0]["TABLE_Name"].ToString();

                        //Read Data from First Sheet.                     
                        cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
                        odaExcel.SelectCommand = cmdExcel;
                        odaExcel.Fill(dt);
                        connExcel.Close();
                    }
                }
            }

        }



        //Add Equipment to SQL
        public int AddEquipment(DataTable dt)
        {
            connectionToSQL();
            //  foreach row in the data table i want to push the values for equiptype, name, press, temp using my stored procedure that insert into.

            int countRowsUploaded = 0;
            foreach (DataRow row in dt.Rows)
            {
                SqlCommand cmd = new SqlCommand("AddNewEquipment", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EquipmentType", row["EquipmentType"]);
                cmd.Parameters.AddWithValue("@EquipmentName", row["EquipmentName"]);
                cmd.Parameters.AddWithValue("@EquipmentId", row["EquipmentId"]);
                cmd.Parameters.AddWithValue("@PressureRating", row["PressureRating"]);
                cmd.Parameters.AddWithValue("@TemperatureRating", row["TemperatureRating"]);

                con.Open();
                int i = cmd.ExecuteNonQuery();
                con.Close();

                if (i > 0)
                {
                    countRowsUploaded += i;
                }
                
            }
            return countRowsUploaded;
        }


        //View equipment that has been uploaded

        public List<Equipment> GetEquipment()
        {
            connectionToSQL();
            List<Equipment> equipmentList = new List<Equipment>();

            SqlCommand cmd = new SqlCommand("GetEquipmentDetails", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sd = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            con.Open();
            sd.Fill(dt);
            con.Close();

            foreach (DataRow row in dt.Rows)
            {
                equipmentList.Add(
                    new Equipment
                    {
                        EquipmentId = Convert.ToInt32(row["EquipmentId"]),
                        EquipmentType = Convert.ToString(row["EquipmentType"]),
                        EquipmentName = Convert.ToString(row["EquipmentName"]),
                        PressureRating = Convert.ToInt32(row["PressureRating"]),
                        TemperatureRating = Convert.ToInt32(row["TemperatureRating"])
                    });
            }
            return equipmentList;
        }
    }
}
