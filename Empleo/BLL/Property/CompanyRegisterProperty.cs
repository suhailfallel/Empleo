using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
    public class CompanyRegisterProperty
    {
        public int Company_Id { get; set; }
        public string Company_Name { get; set; }
        public string Company_Type { get; set; }
        public DateTime DateofEstablish { get; set; }
        public string Company_Address { get; set; }
        public string Company_City { get; set; }
        public string Company_Country { get; set; }
        public long Company_ContactNo { get; set; }
        public string Company_Person { get; set; }
        public string Company_Email { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Status { get; set; }
    }
}
