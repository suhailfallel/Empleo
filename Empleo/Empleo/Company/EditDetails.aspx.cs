using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Company
{
    public partial class EditDetails : System.Web.UI.Page
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

        private void CompanyEdit()
        {
            crm.crp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            crm.crp_Obj.Company_Name = TxtCmName.Text.Trim().ToString();
            crm.crp_Obj.Company_Type = TxtCmType.Text.ToString();
            crm.crp_Obj.DateofEstablish = Convert.ToDateTime(TxtCmDoEstablish.Text);
            crm.crp_Obj.Company_Address = TxtAddress.Text.Trim().ToString();
            crm.crp_Obj.Company_City = TxtCmCity.Text.ToString();
            crm.crp_Obj.Company_Country = TxtCmCountry.Text.Trim().ToString();
            crm.crp_Obj.Company_ContactNo = Convert.ToInt64(TxtCmContactNo.Text);
            crm.crp_Obj.Company_Person = TxtCmContactperson.Text.ToString();
            crm.crp_Obj.Company_Email = TxtCmEmail.Text.ToString();

            string result = crm.CompanyEdit();

            if (result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Info Edited Succesfully";
            }
            else if (result == "Error")
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
            BindProfile();
        }

        public void BindProfile()
        {
            crm.crp_Obj.Company_Id = Convert.ToInt32(Session.Contents["logid"]);
            crm.selectcompanybyId();
            TxtCmName.Text = crm.crp_Obj.Company_Name;
            TxtCmType.Text = crm.crp_Obj.Company_Type;
            TxtCmDoEstablish.Text = crm.crp_Obj.DateofEstablish.ToString();
            TxtAddress.Text = crm.crp_Obj.Company_Address;
            TxtCmCity.Text = crm.crp_Obj.Company_City;
            TxtCmCountry.Text = crm.crp_Obj.Company_Country;
            TxtCmContactNo.Text = crm.crp_Obj.Company_ContactNo.ToString();
            TxtCmContactperson.Text = crm.crp_Obj.Company_Person;
            TxtCmEmail.Text = crm.crp_Obj.Company_Email;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            CompanyEdit();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Cancel();
        }
    }
}