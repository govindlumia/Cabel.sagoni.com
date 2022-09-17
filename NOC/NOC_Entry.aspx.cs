using System;
using System.Data;
using System.Configuration;
using System.Collections;
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

public partial class NOC_NOC_Entry : System.Web.UI.Page
{
    clsCable obj_cable = new clsCable();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";
            Txt_date.Text = DateTime.Now.ToShortDateString();
            if (Request.QueryString["s_no"] != null)
            {
                objReader = obj_cable.NOC_select_update(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                    Txt_STB.Text = objReader["STV_no"].ToString();
                    Txt_date.Text = objReader["dates"].ToString();
                    Txt_Ref.Text = objReader["REF"].ToString();
                    Txt_Den.Text = objReader["DEN"].ToString();
                }
                ViewState["flag"] = "U";
            }
        }
    }
    protected void Btn_search_Click(object sender, EventArgs e)
    {
        objReader = obj_cable.stv_filter(Txt_STB.Text);
        if (objReader.Read())
        {
            lblmsg.Text = "";
            
        }
        else
        {
            lblmsg.Text = "This STB No is not in our Database ";
            return;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        obj_cable.STV_no = Txt_STB.Text;
        obj_cable.DEN = Txt_Den.Text;
        obj_cable.date_of_connection = Convert.ToDateTime(Txt_date.Text);
        obj_cable.REF = Txt_Ref.Text;
        obj_cable.created_by = Session["user_id"].ToString();
        if (ViewState["flag"].ToString() == "I")
        {
            obj_cable.Flag = "I";
            obj_cable.sno = "0";
            value = obj_cable.NOC_Insert(obj_cable);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_cable.Flag = "U";
            obj_cable.sno = Request.QueryString["s_no"].ToString();
            value = obj_cable.NOC_Insert(obj_cable);
        }
        Response.Redirect("~/NOC/ViewNOC.aspx");
    }
}