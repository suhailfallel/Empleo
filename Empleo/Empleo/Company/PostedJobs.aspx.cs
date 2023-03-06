using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL.Manager;

namespace Empleo.Company
{
    public partial class PostedJobs : System.Web.UI.Page
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
                    BindJobs();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        private void BindJobs()
        {
            jrm.jrp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            DetailsView1.DataSource = jrm.SelectJobsbyId();
            DetailsView1.DataBind();
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            DetailsView1.PageIndex = e.NewPageIndex;
            BindJobs();
        }

        protected void DetailsView1_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            if(DetailsView1.CurrentMode == DetailsViewMode.ReadOnly)
            {
                DetailsView1.ChangeMode(DetailsViewMode.Edit);
               // var id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);
               // HiddenField1.Value = id.ToString();

                BindJobs();
            }
            else if(DetailsView1.CurrentMode == DetailsViewMode.Edit)
            {
                DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);

                BindJobs();
            }
        }

        protected void DetailsView1_Updating(object sender, DetailsViewUpdateEventArgs e)
        {
            jrm.jrp_Obj.Job_Id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);

            //HiddenField1.Value = DetailsView1.Rows[0].Cells[1].Controls[0].ToString();
            //jrm.jrp_Obj.Job_Id = Convert.ToInt32(HiddenField1.Value);
            TextBox Postname = DetailsView1.Rows[1].Cells[1].Controls[0] as TextBox;
            TextBox Category = DetailsView1.Rows[2].Cells[1].Controls[0] as TextBox;
            TextBox Joblocation = DetailsView1.Rows[3].Cells[1].Controls[0] as TextBox;
            TextBox Experience = DetailsView1.Rows[4].Cells[1].Controls[0] as TextBox;
            TextBox Salary = DetailsView1.Rows[5].Cells[1].Controls[0] as TextBox;
            TextBox Qualification = DetailsView1.Rows[6].Cells[1].Controls[0] as TextBox;
            TextBox Skills = DetailsView1.Rows[7].Cells[1].Controls[0] as TextBox;
            TextBox Posteddate = DetailsView1.Rows[8].Cells[1].Controls[0] as TextBox;
            TextBox Status = DetailsView1.Rows[9].Cells[1].Controls[0] as TextBox;
            jrm.jrp_Obj.Post_Name = Postname.Text;
            jrm.jrp_Obj.Category = Category.Text;
            jrm.jrp_Obj.Job_Location = Joblocation.Text;
            jrm.jrp_Obj.Experience = Experience.Text;
            jrm.jrp_Obj.Salary = Convert.ToInt64(Salary.Text);
            jrm.jrp_Obj.Qualification = Qualification.Text;
            jrm.jrp_Obj.Skills = Skills.Text;
            jrm.jrp_Obj.Posted_Date = Convert.ToDateTime(Posteddate.Text);
            jrm.jrp_Obj.Status = Status.Text;

            jrm.JobUpdate();
            DetailsView1.ChangeMode(DetailsViewMode.ReadOnly);
            BindJobs();
        }

        protected void DetailsView1_Deleting(object sender, DetailsViewDeleteEventArgs e)
        {
            jrm.jrp_Obj.Job_Id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);

            jrm.JobDelete();
            BindJobs();
        }
    }
}