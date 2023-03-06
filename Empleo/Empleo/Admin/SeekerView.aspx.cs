using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Admin
{
    public partial class SeekerView : System.Web.UI.Page
    {
        SeekerRegisterManager srm_Obj = new SeekerRegisterManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["logid"] != null)
            {
                if (!Page.IsPostBack)
                {
                    Response.Cache.SetExpires(DateTime.UtcNow.AddDays(-1));
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.Cache.SetNoStore();
                    BindSeeker();
                }
            }
            else
            {
                Response.Redirect("~/Public/Login.aspx");
            }
        }

        public void BindSeeker()
        {
            GridView1.DataSource = srm_Obj.selectallSeeker();
            GridView1.DataBind();
        }
    }
}