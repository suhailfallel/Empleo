using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Admin
{
    public partial class AdminHome : System.Web.UI.Page
    {
        AdminRegisterManager arm_Obj = new AdminRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        public void AdminInsert()
        {
            arm_Obj.arp_Obj.Username = TextBox1.Text.ToString();
            arm_Obj.arp_Obj.Password = TextBox2.Text.ToString();
            arm_Obj.arp_Obj.Email = TextBox3.Text.ToString();

            string result = arm_Obj.AdminInsert();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "New Admin Added";
            }
            else if(result == "Already Exist")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Admin Already Exists";
            }
            else if(result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Error";
            }
            AdminBind();
        }

        public void AdminDelete()
        {
            arm_Obj.arp_Obj.Id = int.Parse(HiddenField1.Value);
            string result = arm_Obj.AdminDelete();

            if(result == "Success")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Admin Deleted";
            }
            else if(result == "Error")
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error";
            }
            else
            {
                LblMsg.Visible = true;
                LblMsg.Text = "Error due to Unknown Reason";
            }
            AdminBind();
        }

        public void AdminBind()
        {
            GridView1.DataSource = arm_Obj.selectallAdmin();
            GridView1.DataBind();
        }

        protected void BtnViewAdmin_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            AdminBind();
        }

        protected void BtnAddAdmin_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            BtnSubmit.Visible = true;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            AdminInsert();
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow gvr = btn.NamingContainer as GridViewRow;
            HiddenField1.Value = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
            AdminDelete();
        }
    }
}