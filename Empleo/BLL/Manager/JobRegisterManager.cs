using System;
using DAL;
using BLL.Property;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace BLL.Manager
{
    public class JobRegisterManager
    {
        private DBhelper DB_Obj = new DBhelper();
        public JobRegisterProperty jrp_Obj = new JobRegisterProperty();
        public ConfirmApplication ca_Obj = new ConfirmApplication();
        private SortedList sl1 = new SortedList();

        public List<JobRegisterProperty> selectallJobs()
        {
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable("selectallJobs");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public string JobInsert()
        {
            sl1.Clear();

            //sl1.Add("Job_Id", jrp_Obj.Job_Id);
            sl1.Add("Company_Id", jrp_Obj.Company_Id);
            sl1.Add("Post_Name", jrp_Obj.Post_Name);
            sl1.Add("Category", jrp_Obj.Category);
            sl1.Add("Job_Location", jrp_Obj.Job_Location);
            sl1.Add("Experience", jrp_Obj.Experience);
            sl1.Add("Salary", jrp_Obj.Salary);
            sl1.Add("Qualification", jrp_Obj.Qualification);
            sl1.Add("Skills", jrp_Obj.Skills);
            sl1.Add("Posted_Date", jrp_Obj.Posted_Date);

            return DB_Obj.executeprocedure(sl1, "JobInsert");
        }

        public void JobUpdate()
        {
            sl1.Clear();

            sl1.Add("Job_Id", jrp_Obj.Job_Id);
            sl1.Add("Post_Name", jrp_Obj.Post_Name);
            sl1.Add("Category", jrp_Obj.Category);
            sl1.Add("Job_Location", jrp_Obj.Job_Location);
            sl1.Add("Experience", jrp_Obj.Experience);
            sl1.Add("Salary", jrp_Obj.Salary);
            sl1.Add("Qualification", jrp_Obj.Qualification);
            sl1.Add("Skills", jrp_Obj.Skills);
            sl1.Add("Posted_Date", jrp_Obj.Posted_Date);
            sl1.Add("Status", jrp_Obj.Status);

            DB_Obj.executeprocedure(sl1, "JobUpdate");
        }

        public void JobDelete()
        {
            sl1.Clear();

            sl1.Add("Job_Id", jrp_Obj.Job_Id);

            DB_Obj.executeprocedure(sl1, "JobDelete");
        }

        public List<JobRegisterProperty> SelectJobsbyId()
        {
            sl1.Clear();
            sl1.Add("Company_Id", jrp_Obj.Company_Id);
            DataTable dt = new DataTable();
            dt=DB_Obj.getdatatable(sl1, "SelectJobsbyId");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }
        
        public List<JobRegisterProperty> SelectJobbyId()
        {
            sl1.Clear();
            sl1.Add("Job_Id", jrp_Obj.Job_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(sl1, "SelectJobbyId");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach (DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public List<ConfirmApplication> SelectJobConfirm()
        {
            sl1.Clear();
            sl1.Add("Seeker_Id", ca_Obj.Seeker_Id);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(sl1, "SelectJobConfirm");
            List<ConfirmApplication> list = new List<ConfirmApplication>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new ConfirmApplication
                {
                    Applicant_Name = dr["Seeker_FirstName"] + " " + dr["Seeker_LastName"].ToString(),
                    Applicant_Email = dr["Seeker_Email"].ToString(),
                    Applicant_Contact = dr["Seeker_ContactNo"].ToString(),
                    Resume = dr["Resume"].ToString(),
                    Job_Location = ca_Obj.Job_Location,
                    Post_Name = ca_Obj.Post_Name
                });
            }
            return list;
        }

        public List<JobRegisterProperty> SearchbyPostname()
        {
            sl1.Clear();
            sl1.Add("Post_Name", jrp_Obj.Post_Name);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(sl1, "SearchbyPostname");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public List<JobRegisterProperty> DrpdnLocation()
        {
            sl1.Clear();
            sl1.Add("Job_Location", jrp_Obj.Job_Location);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(sl1, "LocationFilter");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }

        public List<JobRegisterProperty> DrpdnCategory()
        {
            sl1.Clear();
            sl1.Add("Category", jrp_Obj.Category);
            DataTable dt = new DataTable();
            dt = DB_Obj.getdatatable(sl1, "CategoryFilter");
            List<JobRegisterProperty> list = new List<JobRegisterProperty>();
            foreach(DataRow dr in dt.Rows)
            {
                list.Add(new JobRegisterProperty
                {
                    Job_Id = Convert.ToInt32(dr["Job_Id"]),
                    Company_Id = Convert.ToInt32(dr["Company_Id"]),
                    Company_Name = dr["Company_Name"].ToString(),
                    Post_Name = dr["Post_Name"].ToString(),
                    Category = dr["Category"].ToString(),
                    Job_Location = dr["Job_Location"].ToString(),
                    Experience = dr["Experience"].ToString(),
                    Salary = Convert.ToInt64(dr["Salary"]),
                    Qualification = dr["Qualification"].ToString(),
                    Skills = dr["Skills"].ToString(),
                    Posted_Date = Convert.ToDateTime(dr["Posted_Date"]),
                    Status = dr["Status"].ToString()
                });
            }
            return list;
        }
    }
}
