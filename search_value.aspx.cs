using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class search_value : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (Request.QueryString["search_value"] != null)
        {

            Session["search_value"] = Request.QueryString["search_value"].ToString();
            string search_value = Request.QueryString["search_value"].ToString();

            //[customer_serch_view]


            grdenquery.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "CUSTOMER");
            grdenquery.DataBind();
            GridView1.DataSource = obj_main.search_report_select(Request.QueryString["search_value"].ToString(), "PAYMENT");
            GridView1.DataBind();
        }
    }
    protected void lblLeadNo_Click(object sender, EventArgs e)
    {
        GridViewRow row = (GridViewRow)((LinkButton)sender).NamingContainer;
        //string lead_no = row.Cells[0].Text;
        //string customername = row.Cells[1].Text;
        //string mobile = row.Cells[2].Text;
        //string amount = row.Cells[3].Text;
        //string created_by = row.Cells[4].Text;
        //string Status_id = row.Cells[5].Text;
      //  LinkButton lblLeadNo = (LinkButton)row.FindControl("lblserialno");
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/Subscriber/Subscriber_insert.aspx?seno=" + lblserialno.Text);

    }
    protected void lblLeadNo1_Click(object sender, EventArgs e)
    {
        GridViewRow row = (GridViewRow)((LinkButton)sender).NamingContainer;
        //string lead_no = row.Cells[0].Text;
        //string customername = row.Cells[1].Text;
        //string mobile = row.Cells[2].Text;
        //string amount = row.Cells[3].Text;
        //string created_by = row.Cells[4].Text;
        //string Status_id = row.Cells[5].Text;
      //  LinkButton lblLeadNo = (LinkButton)row.FindControl("lblserialno");
        Label lblserialno = (Label)row.FindControl("lblserialno");
        Response.Redirect("~/Payment/PaymentCustomer.aspx?s_no=" + lblserialno.Text);

    }
}