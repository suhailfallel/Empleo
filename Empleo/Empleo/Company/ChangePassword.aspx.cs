using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Company
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        CompanyRegisterManager crm = new CompanyRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    BindProfile();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        private void ChangeCompanyPassword()
        {
            crm.crp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            crm.crp_Obj.Username = TxtUsername.Text.Trim().ToString();
            crm.crp_Obj.Password = TxtPassword.Text.ToString();

            string result = crm.ChangeCompanyPassword();
            if (result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Password changed Successfully";
            }
            else if (result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error Occured";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Reasons";
            }
        }

        private void Cancel()
        {
            BindProfile();
        }

        private void BindProfile()
        {
            crm.crp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            crm.selectcompanybyId();
            TxtUsername.Text = crm.crp_Obj.Username;
        }

        protected void BtnChange_Click(object sender, EventArgs e)
        {
            ChangeCompanyPassword();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Cancel();
        }
    }
}