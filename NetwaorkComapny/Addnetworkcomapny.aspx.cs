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

public partial class NetwaorkComapny_Addnetworkcomapny : System.Web.UI.Page
{
    maincode obj_main = new maincode();
    clsSales objsales = new clsSales();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Txt_Date.Text = DateTime.Now.ToShortDateString();
            ViewState["flag"] = "I";
            if (Request.QueryString["s_no"] != null)
            {
                objReader = obj_main.NetworkCompany_update_view(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                    Txt_company.Text = objReader["company_name"].ToString();
                    Txt_Date.Text = objReader["starting_date"].ToString();
                    Txt_remarks.Text = objReader["remarks"].ToString();
                }
                ViewState["flag"] = "U";
            }
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        obj_main.company_name = Txt_company.Text;
        obj_main.start_date = Convert.ToDateTime(Txt_Date.Text);
        obj_main.Remarks = Txt_remarks.Text;
        obj_main.created_by = Session["user_id"].ToString();
        if (ViewState["flag"].ToString() == "I")
        {
            obj_main.flag = "I";
            obj_main.sno = "0";

            value = obj_main.NetworkCompany_Insert(obj_main);
        }

        else if (ViewState["flag"].ToString() == "U")
        {
            obj_main.flag = "U";
            obj_main.sno = Request.QueryString["s_no"].ToString();
            value = obj_main.NetworkCompany_Insert(obj_main);
        }

        Response.Redirect("~/NetwaorkComapny/ViewCompany.aspx");
    }
}