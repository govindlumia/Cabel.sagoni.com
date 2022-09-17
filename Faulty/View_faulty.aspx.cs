using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Faulty_View_faulty : System.Web.UI.Page
{
    SqlDataReader objReader;
    clsCable obj_cable = new clsCable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/session.html");
        }
        if (!IsPostBack)
        {
            obj_cable.search_value = Txt_search.Text;
            grdLead.DataSource = obj_cable.faulty_select(obj_cable);
            grdLead.DataBind();
        }
    }
    protected void grdLead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Response.Redirect("~/Faulty/Faulty_Entry.aspx?s_no=" + lblserialno.Text);

        }
    }
    protected void Btn_Search_Click(object sender, EventArgs e)
    {
        obj_cable.search_value = Txt_search.Text;
        grdLead.DataSource = obj_cable.faulty_select(obj_cable);
        grdLead.DataBind();
    }
}