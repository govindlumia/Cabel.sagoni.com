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
public partial class Invoice_View_Invoice : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {

            Response.Redirect("~/Login.aspx");
        }

        if (!IsPostBack)
        {
            obj_main.search_value = txtsearch.Text;
            GridView1.DataSource = obj_main.Invoice_Product_Select(obj_main);
            GridView1.DataBind();
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "PRINT")
        {

            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label lblserialno = (Label)row.FindControl("lblserialno");
            Label lblQuo = (Label)row.FindControl("lblQuo");
            Response.Redirect("~/Invoice1.aspx?seno=" + lblserialno.Text + "&Quotation=" + lblQuo.Text);

             
        }
      

    }
    protected void Submit_Btn_Click(object sender, EventArgs e)
    {
        obj_main.search_value = txtsearch.Text;
        GridView1.DataSource = obj_main.Invoice_Product_Select(obj_main);
        GridView1.DataBind();

 
    }
      protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //GridViewRow row = (GridViewRow)(((ImageButton)e.Keys).NamingContainer);
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/DeleteInvoice.aspx?seno=" + lblserialno.Text);
    }
  
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        obj_main.search_value = txtsearch.Text;
        GridView1.DataSource = obj_main.Invoice_Product_Select(obj_main);
        GridView1.DataBind();

    }
}
