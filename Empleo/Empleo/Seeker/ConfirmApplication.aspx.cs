using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Manager;

namespace Empleo.Seeker
{
    public partial class ConfirmApplication : System.Web.UI.Page
    {
        JobRegisterManager jrm = new JobRegisterManager();
        ApplicationRegister ar = new ApplicationRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();

                    Hidid.Value = Request.QueryString["jobid"];
                    Hidlocation.Value = Request.QueryString["loc"];
                    Hidpostname.Value = Request.QueryString["postname"];
                    Hidseekerid.Value = Request.QueryString["skrid"];
                    BindJob();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
            
        }

        private void BindJob()
        {
            jrm.ca_Obj.Job_Id = Convert.ToInt32(Hidid.Value);
            jrm.ca_Obj.Seeker_Id = Convert.ToInt32(Hidseekerid.Value);
            jrm.ca_Obj.Post_Name = Hidpostname.Value.ToString();
            jrm.ca_Obj.Job_Location = Hidlocation.Value.ToString();
            DataList1.DataSource = jrm.SelectJobConfirm();
            DataList1.DataBind();
        }

        private void Apply()
        {
            ar.ap.Applicant_Id = Convert.ToInt32(Session.Contents["logid"]);
            ar.ap.Job_Id = Convert.ToInt32(Hidid.Value);
            ar.ap.Application_Date = Convert.ToDateTime(DateTime.Now);
            string result = ar.Apply();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Application Sent";
            }
            else if(result == "Already Exist")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Already Applied for this Job";
            }
            else if (result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Reason";
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "Apply")
            {
                Apply();
            }
            else if (e.CommandName == "Cancel")
            {
                Response.Redirect("Search.aspx");
            }
        }
    }
}