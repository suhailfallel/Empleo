using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Admin
{
    public partial class Jobs : System.Web.UI.Page
    {
        JobRegisterManager jrm_Obj = new JobRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    BindJob();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        public void BindJob()
        {
            GridView1.DataSource = jrm_Obj.selectallJobs();
            GridView1.DataBind();
        }
    }
}