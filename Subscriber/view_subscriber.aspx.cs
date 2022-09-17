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
using System.Net.Mail;
public partial class Subscriber_view_subscriber : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    clsSales objsales = new clsSales();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (!IsPostBack)
        {
            obj_main.search_value = Txt_search.Text;
            grdLead.DataSource = obj_main.Customer_select(obj_main);
            grdLead.DataBind();
        }

    }
    protected void grdLead_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Label lblQuo = (Label)row.FindControl("lblQuo");
            Response.Redirect("~/Subscriber/Subscriber_insert.aspx?seno=" + lblserialno.Text);
        }
    }
    protected void Btn_Search_Click(object sender, EventArgs e)
    {
        obj_main.search_value = Txt_search.Text;
        grdLead.DataSource = obj_main.Customer_select(obj_main);
        grdLead.DataBind();
    }
}