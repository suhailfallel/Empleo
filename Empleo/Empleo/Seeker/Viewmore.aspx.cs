using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Seeker
{
    public partial class Viewmore : System.Web.UI.Page
    {
        string hidpost, hidloc;
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
                    Hidid.Value = Request.QueryString["jobid"];
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
            jrm.jrp_Obj.Job_Id = Convert.ToInt32(Hidid.Value);
            DataList1.DataSource = jrm.SelectJobbyId();
            DataList1.DataBind();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.Item.ItemIndex);
            Label lblpost = (Label)e.Item.FindControl("LblPostname");
            Label lblloc = (Label)e.Item.FindControl("LblLocation");
            HidPostname.Value = lblpost.Text;
            HidLocation.Value = lblloc.Text;
            hidpost = HidPostname.Value.ToString();
            hidloc = HidLocation.Value.ToString();
            if (e.CommandName == "Apply")
            {
                Response.Redirect("ConfirmApplication.aspx?jobid=" + Hidid.Value + "&postname=" + HidPostname.Value + "&loc=" + HidLocation.Value + "&skrid=" + Session.Contents["logid"]);
            }
            else if (e.CommandName == "Cancel")
            {
                Response.Redirect("Search.aspx");

            }
        }

        protected void BtnApply_Click(object sender, EventArgs e)
        {
           // Response.Redirect("ConfirmApplication.aspx?jobid=" + Hidid.Value + "&postname=" + HidPostname.Value + "&loc=" + HidLocation.Value + "&skrid=" + 2);
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
          //  Response.Redirect("Search.aspx");
        }
    }
}