using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Seeker
{
    public partial class ChangePassword : System.Web.UI.Page
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

        private void SeekerPasswordChange()
        {
            srm.srp_Obj.Seeker_Id = Convert.ToInt32(Session.Contents["logid"]);
            srm.srp_Obj.Username = TxtUsername.Text.Trim().ToString();
            srm.srp_Obj.Password = TxtPassword.Text.Trim().ToString();

            string result = srm.SeekerPasswordChange();
            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Password Changed Successfully";
            }
            else if (result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error Occured";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to unknown reason";
            }
        }

        protected void Clear()
        {
            BindProfile();
        }

        protected void BindProfile()
        {
            srm.srp_Obj.Seeker_Id = Convert.ToInt32(Session.Contents["logid"]);
            srm.selectseekerbyId();
            TxtUsername.Text = srm.srp_Obj.Username;
        }

        protected void BtnChange_Click(object sender, EventArgs e)
        {
            SeekerPasswordChange();
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }
    }
}