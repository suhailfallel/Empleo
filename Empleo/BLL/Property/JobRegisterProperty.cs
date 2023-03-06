 using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
    public class JobRegisterProperty
    {
        public int Job_Id { get; set; }
        public int Company_Id { get; set; }
        public string Company_Name { get; set; }
        public string Post_Name { get; set; }
        public string Category { get; set; }
        public string Job_Location { get; set; }
        public string Experience { get; set; }
        public long Salary { get; set; }
        public string Qualification { get; set; }
        public string Skills { get; set; }
        public DateTime Posted_Date { get; set; }
        public string Status { get; set; }
    }
}
