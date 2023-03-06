using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Seeker
{
    public partial class EditProfile : System.Web.UI.Page
    {
        SeekerRegisterManager srm = new SeekerRegisterManager();
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

        private void SeekerEdit()
        {
            srm.srp_Obj.Seeker_Id = Convert.ToInt32(Session.Contents["logid"]);
            srm.srp_Obj.Seeker_FirstName = TxtFirstname.Text.Trim().ToString();
            srm.srp_Obj.Seeker_LastName = TxtLastname.Text.Trim().ToString();
            srm.srp_Obj.Seeker_DateofBirth = Convert.ToDateTime(TxtDOB.Text);
            srm.srp_Obj.Highest_Education = DropDownList1.SelectedValue.ToString();
            srm.srp_Obj.Seeker_Email = TxtEmail.Text.Trim().ToString();
            srm.srp_Obj.Seeker_Address = TxtAddress.Text.ToString();
            srm.srp_Obj.Seeker_District = TxtAddress.Text.Trim().ToString();
            srm.srp_Obj.Seeker_State = TxtState.Text.ToString();
            srm.srp_Obj.Seeker_ContactNo = TxtContact.Text.Trim().ToString();
            string filename = randomtext();
            string path = Server.MapPath("~/Image/");
            FUResume.SaveAs(path + filename + ".jpg");
            srm.srp_Obj.Resume = ("~/Image/" + filename + ".jpg");

            string result = srm.SeekerEdit();
            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Your Details Have Been Updated";
            }
            else if (result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "An Error Occured";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "An Unknown Error has been Occured";
            }
        }
        
        private void Clear()
        {
            //TxtFirstname.Text = "";
            //TxtLastname.Text = "";
            //TxtDOB.Text = "";
            //TxtAddress.Text = "";
            //TxtContact.Text = "";
            //TxtDistrict.Text = "";
            //TxtEmail.Text = "";
            //TxtState.Text = "";
            //DropDownList1.SelectedValue = "--Select--";
            //FUResume.Attributes.Clear();
            ////FUResume.PostedFile.InputStream.Dispose();
            BindProfile();
        }

        protected void BindProfile()
        {
            srm.srp_Obj.Seeker_Id = Convert.ToInt32(Session.Contents["logid"]);
            srm.selectseekerbyId();
            TxtFirstname.Text = srm.srp_Obj.Seeker_FirstName;
            TxtLastname.Text = srm.srp_Obj.Seeker_LastName;
            TxtAddress.Text = srm.srp_Obj.Seeker_Address;
            TxtContact.Text = srm.srp_Obj.Seeker_ContactNo;
            TxtDistrict.Text = srm.srp_Obj.Seeker_District;
            TxtDOB.Text = srm.srp_Obj.Seeker_DateofBirth.ToString();
            TxtEmail.Text = srm.srp_Obj.Seeker_Email;
            TxtState.Text = srm.srp_Obj.Seeker_State;
        }

        protected void BtnSave_Click(object sender, EventArgs e)
        {
            SeekerEdit();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}