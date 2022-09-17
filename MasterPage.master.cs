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

public partial class MasterPage : System.Web.UI.MasterPage
{
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] !=null)
        {
            lblusername.Text = Session["name"].ToString();
           
        }
        else
        {
            Response.Redirect("~/session.html");
        }
    
    }
    protected void ImgCompany_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
    
          Session.Abandon();
          Response.Redirect("~/Admin_Login.aspx");
     
    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {
        obj_main.search_value = txtsearch.Text.ToString();

        Response.Redirect("~/search_value.aspx?search_value=" + txtsearch.Text);
    }
}
