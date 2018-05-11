using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EquipmentUpload.Models
{
    public class Equipment
    {

        [Display(Name = "Equipment Id")]
        public int EquipmentId { get; set; }

        [Display(Name = "Equipment Type")]
        public string EquipmentType { get; set; }

        [Display(Name = "Equipment Name")]
        public string EquipmentName { get; set; }

        [Display(Name = "Pressure Rating (PSI)")]
        public int PressureRating { get; set; }

        [Display(Name = "Temperature Rating (F)")]
        public int TemperatureRating { get; set; }
    }
}