using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Public
{
    public partial class JobSeekerRegistration : System.Web.UI.Page
    {
        SeekerRegisterManager srm = new SeekerRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

            }
        }

        private string randomtext()
        {
            string randomtxt = "";
            string alphabets = "0123456789";
            Random r = new Random();
            for (int j = 0; j <= 3; j++)
            {
                randomtxt += alphabets[r.Next(alphabets.Length)];
            }
            return randomtxt.ToString();
        }

        private void SeekerInsert()
        {
            srm.srp_Obj.Seeker_FirstName = TxtFirstname.Text.Trim().ToString();
            srm.srp_Obj.Seeker_LastName = TxtLastname.Text.Trim().ToString();
            srm.srp_Obj.Seeker_DateofBirth = DateTime.Parse(TxtDOB.Text);
            srm.srp_Obj.Highest_Education = DropDownList1.SelectedValue.ToString();
            srm.srp_Obj.Seeker_Email = TxtEmail.Text.Trim().ToString();
            srm.srp_Obj.Seeker_Address = TxtAddress.Text.Trim().ToString();
            srm.srp_Obj.Seeker_District = TxtDistrict.Text.Trim().ToString();
            srm.srp_Obj.Seeker_State = TxtState.Text.Trim().ToString();
            srm.srp_Obj.Seeker_ContactNo = TxtContact.Text.Trim().ToString();
            string filename = randomtext();
            string path = Server.MapPath("~/Image/");
            FUResume.SaveAs(path + filename + ".jpg");
            srm.srp_Obj.Resume = ("~/Image/" + filename + ".jpg");
            srm.srp_Obj.Username = TxtUsername.Text.ToString();
            srm.srp_Obj.Password = TxtPassword.Text.ToString();

            string result = srm.SeekerInsert();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Registration Successfull";
            }
            else if(result=="Already Exist")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Email/Username Already Exist";
            }
            else if (result == "Error")
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

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            SeekerInsert();
        }
    }
}