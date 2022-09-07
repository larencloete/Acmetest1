using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class EmployeeModel
    {
        public int EmployeeId { get; set; }
        public int PersionId { get; set; }
        public int EmployeeNum { get; set; }
        public DateTime EmployedDate { get; set; }
        public int Terminated { get; set; } 
    }
}