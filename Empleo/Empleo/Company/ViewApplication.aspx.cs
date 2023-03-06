using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Company
{
    public partial class ViewApplication : System.Web.UI.Page
    {
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
                    // BindDropdown();
                    BindApplication();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }
        
        private void BindDropdown()
        {
            ar.ap.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            DropDownList1.DataSource = ar.SelectCompany();
            DropDownList1.DataTextField = "Post_Name";
            DropDownList1.DataValueField = "Post_Name";
            DropDownList1.DataBind();
        }

        private void BindApplication()
        {
            ar.ap.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            DetailsView1.DataSource = ar.SelectApplicationCompanyId();
            DetailsView1.DataBind();
        }

        protected void PostFilter(object sender, EventArgs e)
        {
            string post = DropDownList1.SelectedValue.ToString();
            ar.ap.Post_Name = post;
            if(DropDownList1.SelectedValue == "--Select--")
            {
                BindApplication();
            }
            else
            {
                DetailsView1.DataSource = ar.FilterPost();
                DetailsView1.DataBind();
            }
        }
        protected void DetasilsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {
            DetailsView1.PageIndex = e.NewPageIndex;
            BindApplication();
        }

        protected void BtnAccept_Click(object sender, EventArgs e)
        {
            ar.ap.Application_Id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);
            ar.ApplicationAccept();
            BindApplication();
        }

        protected void BtnViewResume_Click(object sender, EventArgs e)
        {
            ar.ap.Application_Id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);
            ar.ApplicationViewresume();
            BindApplication();
        }

        protected void BtnReject_Click(object sender, EventArgs e)
        {
            ar.ap.Application_Id = Convert.ToInt32(DetailsView1.Rows[0].Cells[1].Text);
            ar.ApplicationReject();
            BindApplication();
        }
    }
}