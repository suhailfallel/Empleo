using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Public
{
    public partial class Login : System.Web.UI.Page
    {
        AdminRegisterManager arm = new AdminRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        private void login()
        {
            arm.arp_Obj.Username = TxtUsername.Text.Trim().ToString();
            arm.arp_Obj.Password = TxtPassword.Text.Trim().ToString();
            string result = arm.Login();
            string[] arr = result.Split(',');
            string res = arr[0];

            if(res == "Success")
            {
                int id = Convert.ToInt32(arr[1]);
                string role = arr[2];
                string status = arr[3];
                if(role == "Admin" && status == "A")
                {
                    Session.Add("logid", id);
                    Response.Redirect("~/Admin/AdminHome.aspx");
                }
                else if(role == "Seeker" && status == "A")
                {
                    Session.Add("logid", id);
                    Response.Redirect("~/Seeker/SeekerHome.aspx");
                }
                else if(role == "Provider")
                {
                    if(status == "A")
                    {
                        Session.Add("logid", id);
                        Response.Redirect("~/Company/CompanyHome.aspx");
                    }
                    else
                    {
                        LblMsg.Visible = true;
                        LblMsg.Text = "Account Blocked!! Please wait or Contact Admin!";
                    }
                   
                }
                else
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Login Failed";
                }
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            login();
        }
    }
}