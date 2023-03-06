using System;
using System.Collections;
using DAL;
using BLL.Property;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class ApplicationRegister
    {
        private DBhelper Db_Obj = new DBhelper();
        public ApplicationProperty ap = new ApplicationProperty();
        public JobRegisterProperty jrp = new JobRegisterProperty();
        private SortedList sl1 = new SortedList();
        List<ApplicationProperty> list = new List<ApplicationProperty>();        
        public string Apply()
        {
            sl1.Clear();

            sl1.Add("Job_Id", ap.Job_Id);
            sl1.Add("Seeker_Id", ap.Applicant_Id);
            sl1.Add("Application_Date", ap.Application_Date);

            return Db_Obj.executeprocedure(sl1, "Apply");
        }
        
        public List<ApplicationProperty> SelectApplicationbyId()
        {
            sl1.Clear();
            sl1.Add("Seeker_Id", ap.Applicant_Id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "SelectApplicationbyId");
            List<ApplicationProperty> list = new List<ApplicationProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new ApplicationProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Post_Name = dr["Post_Name"].ToString(),
                    Company_Name = dr["Company_Name"].ToString(),
                    Application_Date = Convert.ToDateTime(dr["Application_Time"]),
                    Status = dr["Status"].ToString(),
                    Message = dr["Message"].ToString()
                });
            }
            return list;
        }

        public List<ApplicationProperty> SelectApplicationCompanyId()
        {
            sl1.Clear();
            sl1.Add("Company_Id", ap.Company_Id);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "SelectApplicationCompanyId");
            List<ApplicationProperty> list = new List<ApplicationProperty>();

            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new ApplicationProperty
                {
                    Application_Id = Convert.ToInt32(dr["Application_Id"]),
                    Applicant_Id = Convert.ToInt32(dr["Applicant_Id"]),
                    Applicant_Name = dr["Applicant_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Applicant_Contact = Convert.ToInt64(dr["Applicant_Contact"]),
                    Applicant_Email = dr["Applicant_Email"].ToString(),
                    Resume = dr["Resume"].ToString(),
                    Status = dr["Status"].ToString(),
                    Message = dr["Message"].ToString()
                });
            }
            return list;
        }

        public void ApplicationAccept()
        {
            sl1.Clear();
            sl1.Add("Application_Id", ap.Application_Id);

            Db_Obj.executeprocedure(sl1, "ApplicationAccept");
        }

        public void ApplicationViewresume()
        {
            sl1.Clear();
            sl1.Add("Application_Id", ap.Application_Id);

            Db_Obj.executeprocedure(sl1, "ApplicationViewresume");
        }

        public void ApplicationReject()
        {
            sl1.Clear();
            sl1.Add("Application_Id", ap.Application_Id);

            Db_Obj.executeprocedure(sl1, "ApplicationReject");
        }

        public DataTable SelectCompany()
        {
            sl1.Clear();
            sl1.Add("Company_Id", ap.Company_Id);

            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "DropdownCompany");
            return dt;
        }

        public List<ApplicationProperty> FilterPost()
        {
            sl1.Clear();
            sl1.Add("Post_Name", ap.Post_Name);
            DataTable dt = new DataTable();
            dt = Db_Obj.getdatatable(sl1, "FilterPost");
            List<ApplicationProperty> list = new List<ApplicationProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new ApplicationProperty
                {
                    Application_Id = Convert.ToInt32(dt.Rows[0].ItemArray[0]),
                    Applicant_Id = Convert.ToInt32(dt.Rows[0].ItemArray[1]),
                    Applicant_Name = dt.Rows[0].ItemArray[5].ToString(),
                    Post_Name = dt.Rows[0].ItemArray[3].ToString(),
                    Applicant_Contact = Convert.ToInt64(dt.Rows[0].ItemArray[6]),
                    Applicant_Email = dt.Rows[0].ItemArray[7].ToString(),
                    Resume = dt.Rows[0].ItemArray[8].ToString(),
                    Status = dt.Rows[0].ItemArray[10].ToString(),
                    Message = dt.Rows[0].ItemArray[11].ToString()
                });
            }
            return list;
        }
    }
}
