using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Public
{
    public partial class JobProviderRegistration : System.Web.UI.Page
    {
        CompanyRegisterManager crm = new CompanyRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        protected void CompanyInsert()
        {
            crm.crp_Obj.Company_Name = TxtCmName.Text.Trim().ToString();
            crm.crp_Obj.Company_Type = TxtCmType.Text.ToString();
            crm.crp_Obj.DateofEstablish = DateTime.Parse(TxtCmDoEstablish.Text);
            crm.crp_Obj.Company_Address = TxtAddress.Text.Trim().ToString();
            crm.crp_Obj.Company_City = TxtCmCity.Text.ToString();
            crm.crp_Obj.Company_Country = TxtCmCountry.Text.Trim().ToString();
            crm.crp_Obj.Company_ContactNo = Convert.ToInt64(TxtCmContactNo.Text);
            crm.crp_Obj.Company_Person = TxtCmContactperson.Text.ToString();
            crm.crp_Obj.Company_Email = TxtCmEmail.Text.Trim().ToString();
            crm.crp_Obj.Username = TxtUsername.Text.ToString();
            crm.crp_Obj.Password = TxtPassword.Text.ToString();

            string result = crm.CompanyInsert();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Registration Successfull";
            }
            else if(result == "Already Exist")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Email/Username Already Exist";
            }
            else if(result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Failed due to Error";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Failed due to Unknown Error";
            }
        }

        protected void BtnRegister_Click(Object sender, EventArgs e)
        {
            CompanyInsert();
        }
    }
}