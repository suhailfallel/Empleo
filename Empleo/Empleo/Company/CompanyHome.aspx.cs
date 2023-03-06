using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Company
{
    public partial class CompanyHome : System.Web.UI.Page
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

        private void BindProfile()
        {
            crm.crp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            crm.selectcompanybyId();
            LblCompanyName.Text = crm.crp_Obj.Company_Name;
            LblCompanyType.Text = crm.crp_Obj.Company_Type;
            LblCompanyEmail.Text = crm.crp_Obj.Company_Email;
            LblCompanyAddress.Text = crm.crp_Obj.Company_Address;
            LblCompanyCity.Text = crm.crp_Obj.Company_City;
            LblCompanyCountry.Text = crm.crp_Obj.Company_Country;
            LblCompanyContact.Text = crm.crp_Obj.Company_ContactNo.ToString();
            LblDateofEstablish.Text = crm.crp_Obj.DateofEstablish.ToString();
        }
    }
}