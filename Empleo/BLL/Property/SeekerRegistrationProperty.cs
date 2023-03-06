using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
    public class SeekerRegistrationProperty
    {
        public int Seeker_Id { get; set; }
        public string Seeker_FirstName { get; set; }
        public string Seeker_LastName { get; set; }
        public DateTime Seeker_DateofBirth { get; set; }
        public string Highest_Education { get; set; }
        public string Seeker_Email { get; set; }
        public string Seeker_Address { get; set; }
        public string Seeker_District { get; set; }
        public string Seeker_State { get; set; }
        public string Seeker_ContactNo { get; set; }
        public string Resume { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }
}
