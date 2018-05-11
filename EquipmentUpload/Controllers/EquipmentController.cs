using EquipmentUpload.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EquipmentUpload.Controllers
{
    public class EquipmentController : Controller
    {
        // GET: Equipment - Retrieve all details
        public ActionResult Index()
        {
            DatabaseHandles handles = new DatabaseHandles();
            ModelState.Clear();
            return View(handles.GetEquipment());
        }

        // GET: Equipment/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Equipment/Create
        [HttpPost]
        public ActionResult Create(HttpPostedFileBase postedFile)
        {
            
            try
            {
                if (ModelState.IsValid)
                {
                    string filePath = string.Empty;
                    if (postedFile != null)
                    {
                        string path = Server.MapPath("~/Uploads/");
                        if (!Directory.Exists(path))
                        {
                            Directory.CreateDirectory(path);
                        }

                        filePath = path + Path.GetFileName(postedFile.FileName);
                        string extension = Path.GetExtension(postedFile.FileName);
                        postedFile.SaveAs(filePath);

                        DataTable dt;
                        DatabaseHandles handles = new DatabaseHandles();
                        handles.ReadExcel(filePath, extension, out dt);

                        int rowUploadCount = handles.AddEquipment(dt);
                        ViewBag.RowsCount = "You have uploaded " + rowUploadCount + " rows";
                        
                    }
                    else
                    {
                        ViewBag.ErrorMess = "You must choose a file!";
                    }
                }

                return View();
            }
            catch
            {
                return new HttpNotFoundResult();
            }
        }
    }
}
