using System;
using BLL.Manager;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Empleo.Public
{
    public partial class Jobs : System.Web.UI.Page
    { 
            int hidid;
            string hidpost, hidloc;
            JobRegisterManager jrm = new JobRegisterManager();
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!Page.IsPostBack)
                {
                    BindDataList();
                }
            }

            private void BindDataList()
            {
                DataList1.DataSource = jrm.selectallJobs();
                DataList1.DataBind();
            }

            protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
            {
                int i;
                int index = Convert.ToInt32(e.Item.ItemIndex);
                Label lblid = (Label)e.Item.FindControl("LblId");
                Label lblpost = (Label)e.Item.FindControl("LblPostname");
                Label lblloc = (Label)e.Item.FindControl("LblLoc");
                HidJobid.Value = lblid.Text;
                HidPostname.Value = lblpost.Text;
                HidLocation.Value = lblloc.Text;
                hidid = Convert.ToInt32(HidJobid.Value);
                hidpost = HidPostname.Value.ToString();
                hidloc = HidLocation.Value.ToString();
                if (e.CommandName == "Apply")
                {
                    Response.Redirect("~/Seeker/ConfirmApplication.aspx?jobid=" + HidJobid.Value + "&postname=" + HidPostname.Value + "&loc=" + HidLocation.Value + "&skrid=" + 2);
                }
                else if (e.CommandName == "View")
                {
                    Response.Redirect("~/Seeker/Viewmore.aspx?jobid=" + HidJobid.Value);
                }

            }

            protected void BtnApply_Click(object sender, EventArgs e)
            {

                // Response.Redirect("ConfirmApplication.aspx?jobid=" + HidJobid.Value + "&postname=" + HidPostname.Value + "&loc=" + HidLocation.Value + "&skrid=" + 2);
            }

            protected void BtnView_Click(object sender, EventArgs e)
            {

                //  Response.Redirect("Viewmore.aspx?jobid=" + HidJobid.Value);
            }

            protected void BtnSearch_Click(object sender, EventArgs e)
            {
                jrm.jrp_Obj.Post_Name = TxtSearch.Text.Trim().ToString();
                DataList1.DataSource = jrm.SearchbyPostname();
                DataList1.DataBind();
            }

            protected void DrpdnLocationFilter(object sender, EventArgs e)
            {
                string loc = DrpdnLocation.SelectedValue.ToString();
                jrm.jrp_Obj.Job_Location = loc;
                if (DrpdnLocation.SelectedValue == "--Select--")
                {
                    BindDataList();
                }
                else
                {
                    DataList1.DataSource = jrm.DrpdnLocation();
                    DataList1.DataBind();
                }
            }

            protected void DrpdnCategoryFilter(object sender, EventArgs e)
            {
                string cat = DrpdnCategory.SelectedValue.ToString();
                jrm.jrp_Obj.Category = cat;
                if (DrpdnCategory.SelectedValue == "--Select--")
                {
                    BindDataList();
                }
                else
                {
                    DataList1.DataSource = jrm.DrpdnCategory();
                    DataList1.DataBind();
                }
            }
        
    }
}