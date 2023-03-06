using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL.Property
{
    public class ApplicationProperty
    {
        public int Application_Id { get; set; }
        public int Applicant_Id { get; set; }
        public int Job_Id { get; set; }
        public string Post_Name { get; set; }
        public string Job_Location { get; set; }
        public string Company_Name { get; set; }
        public int Company_Id { get; set; }
        public string Applicant_Name { get; set; }
        public long Applicant_Contact { get; set; }
        public string Applicant_Email { get; set; }
        public string Resume { get; set; }
        public DateTime Application_Date { get; set; }
        public string Status { get; set; }
        public string Message { get; set; }
    }

    public class ConfirmApplication
    {
        public int Job_Id { get; set; }
        public int Seeker_Id { get; set; }
        public string Applicant_Name { get; set; }
        public string Applicant_Email { get; set; }
        public string Post_Name { get; set; }
        public string Applicant_Contact { get; set; }
        public string Job_Location { get; set; }
        public string Resume { get; set; }
    }
}
