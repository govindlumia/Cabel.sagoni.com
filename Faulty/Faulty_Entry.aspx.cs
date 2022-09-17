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

public partial class Faulty_Faulty_Entry : System.Web.UI.Page
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
            objReader = obj_cable.ddstatus_s();
            ddstatus.DataSource = objReader;
            ddstatus.DataTextField = "s_name";
            ddstatus.DataValueField = "s_name";
            ddstatus.DataBind();
            ddstatus.Items.Insert(0, "Select Status");
            ddstatus.Items[0].Value = "0";
            ddstatus.SelectedIndex = 0;
            objReader.Close();

            if (Request.QueryString["s_no"] != null)
            {
                objReader = obj_cable.faulty_update_view(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                    Txt_STB.Text = objReader["stb"].ToString();
                    Txt_Remarks.Text = objReader["remarks"].ToString();
                    Txt_date.Text = objReader["send_date"].ToString();
                    ddstatus.SelectedValue = objReader["status_s"].ToString();
                }
                ViewState["flag"] = "U";
            }

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        obj_cable.STV_no = Txt_STB.Text;
        obj_cable.remarks = Txt_Remarks.Text;
        obj_cable.date_of_connection = Convert.ToDateTime(Txt_date.Text);;
        obj_cable.status_s = ddstatus.SelectedValue.ToString();
        obj_cable.created_by = Session["user_id"].ToString();
        if (ViewState["flag"].ToString() == "I")
        {
            obj_cable.Flag = "I";
            obj_cable.sno = "0";
            value = obj_cable.faulty_Insert(obj_cable);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_cable.Flag = "U";
            obj_cable.sno = Request.QueryString["s_no"].ToString();
            value = obj_cable.faulty_Insert(obj_cable);
        }
        Response.Redirect("~/Faulty/View_faulty.aspx");
    }
}