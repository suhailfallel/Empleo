using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Seeker
{
    public partial class SeekerHome : System.Web.UI.Page
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
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
            
        }

        private void BindProfile()
        {
            srm.srp_Obj.Seeker_Id = Convert.ToInt32(Session.Contents["logid"]);
            srm.selectseekerbyId();
            LblName.Text = srm.srp_Obj.Seeker_FirstName + " " + srm.srp_Obj.Seeker_LastName;
            LblAddress.Text = srm.srp_Obj.Seeker_Address;
            LblEducation.Text = srm.srp_Obj.Highest_Education;
            LblDoB.Text = srm.srp_Obj.Seeker_DateofBirth.ToString();
            LblEmail.Text = srm.srp_Obj.Seeker_Email;
            LblDistrict.Text = srm.srp_Obj.Seeker_District;
            LblContact.Text = srm.srp_Obj.Seeker_ContactNo;
            LblState.Text = srm.srp_Obj.Seeker_State;
            ImageMap1.ImageUrl = srm.srp_Obj.Resume;
        }
    }
}