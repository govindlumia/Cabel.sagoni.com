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
using System.IO;

public partial class sale_invoice : System.Web.UI.Page
{
    clsCable obj_cable = new clsCable();
    SqlDataReader objReader;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblDate.Text = DateTime.Today.ToShortDateString();

        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/Admin_Login.aspx");
        }
        if (Request.QueryString["s_no"] != null)
        {
            objReader = obj_cable.NOC_select_update(Request.QueryString["s_no"].ToString());
            if (objReader.Read())
            {
                lblDate.Text = objReader["dates"].ToString();
                lblDEN.Text = objReader["DEN"].ToString();
                lblREF.Text = objReader["REF"].ToString();
                lblstb.Text = objReader["STV_no"].ToString();
            }
        }                                                  
    }
}