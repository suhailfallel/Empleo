using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Admin
{
    public partial class CompanyView : System.Web.UI.Page
    {
        CompanyRegisterManager crm_Obj = new CompanyRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    BindCompany();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        public void BindCompany()
        {
            GridView1.DataSource = crm_Obj.selectallCompany();
            GridView1.DataBind();
        }

        public void CompanyAccept()
        {
            crm_Obj.crp_Obj.Company_Id = Convert.ToInt32(HiddenField1.Value);
            string result = crm_Obj.CompanyAccept();

            if (result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Company Accepted";
            }
            else if (result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "An Error Occured";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Error";
            }
            BindCompany();
        }

        public void CompanyDecline()
        {
            crm_Obj.crp_Obj.Company_Id = Convert.ToInt32(HiddenField1.Value);
            string result = crm_Obj.CompanyDecline();

            if (result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Company Declined";
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
            BindCompany();
        }

        protected void BtnAccept_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow gvr = btn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            CompanyAccept();
            
        }

        protected void BtnDecline_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow gvr = btn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            CompanyDecline();
            
        }
    }
}