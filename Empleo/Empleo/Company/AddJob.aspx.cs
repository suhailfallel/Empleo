using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Company
{
    public partial class AddJob : System.Web.UI.Page
    {
        JobRegisterManager jrm = new JobRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

       private void JobInsert()
        {
            jrm.jrp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            jrm.jrp_Obj.Post_Name = TxtPostname.Text.ToString();
            jrm.jrp_Obj.Category = TxtCategory.Text.ToString();
            jrm.jrp_Obj.Job_Location = TxtLocation.Text.ToString();
            jrm.jrp_Obj.Experience = TxtExperience.Text.ToString();
            jrm.jrp_Obj.Salary = Convert.ToInt64(TxtSalary.Text);
            jrm.jrp_Obj.Qualification = TxtQualification.Text.ToString();
            jrm.jrp_Obj.Skills = TxtSkills.Text.ToString();
            jrm.jrp_Obj.Posted_Date = Convert.ToDateTime(DateTime.Now);

            string result = jrm.JobInsert();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Job Posted";
            }
            else if(result=="Already Exist")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "This Job already Exist";
            }
            else if(result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error Occured";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Reason";
            }
        }

        private void Cancel()
        {
            TxtCategory.Text = "";
            TxtExperience.Text = "";
            TxtLocation.Text = "";
            TxtPostname.Text = "";
            TxtQualification.Text = "";
            TxtSalary.Text = "";
            TxtSkills.Text = "";
        }

        protected void BtnPost_Click(object sender, EventArgs e)
        {
            JobInsert();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Cancel();
        }
    }
}