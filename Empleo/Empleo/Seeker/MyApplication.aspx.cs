using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Seeker
{
    public partial class MyApplication : System.Web.UI.Page
    {
        ApplicationRegister ar = new ApplicationRegister();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    BindApplication();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
            
        }

        private void BindApplication()
        {
            ar.ap.Applicant_Id = Convert.ToInt32(Session.Contents["logid"]);
            GridView1.DataSource = ar.SelectApplicationbyId();
            GridView1.DataBind();
        }
    }
}