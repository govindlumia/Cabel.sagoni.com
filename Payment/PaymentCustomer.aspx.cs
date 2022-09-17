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

public partial class Payment_PaymentCustomer : System.Web.UI.Page
{
    clsCable obj_cable = new clsCable();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";
            Txt_from.Text = DateTime.Now.ToShortDateString();
            Txt_todate.Text = DateTime.Now.ToShortDateString();
            objReader = obj_cable.package_dd();
            ddpackage.DataSource = objReader;
            ddpackage.DataTextField = "pname";
            ddpackage.DataValueField = "pname";
            ddpackage.DataBind();
            ddpackage.Items.Insert(0, "Select Package");
            ddpackage.Items[0].Value = "0";
            ddpackage.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_cable.dd_NetworkCompany_select();
            ddnetwork.DataSource = objReader;
            ddnetwork.DataTextField = "company_name";
            ddnetwork.DataValueField = "company_name";
            ddnetwork.DataBind();
            ddnetwork.Items.Insert(0, "Select Network");
            ddnetwork.Items[0].Value = "0";
            ddnetwork.SelectedIndex = 0;
            objReader.Close();



            if (Request.QueryString["s_no"] != null)
            {
                objReader = obj_cable.Payment_select_update(Request.QueryString["s_no"].ToString());
                if (objReader.Read())
                {
                    Txt_custid.Text = objReader["customer_id"].ToString();
                    Txt_from.Text = objReader["payment_from"].ToString();
                    Txt_total.Text = objReader["Total_amount"].ToString();
                    Txt_todate.Text = objReader["payment_to"].ToString();
                    Txt_Name.Text = objReader["customer_name"].ToString();
                    Txt_Mob.Text = objReader["mobile"].ToString();
                    Txt_house.Text = objReader["house_no"].ToString();
                    Txt_floor.Text = objReader["hfloor"].ToString();
                    Txt_Block.Text = objReader["block"].ToString();
                    Txt_sector.Text = objReader["sector"].ToString();
                    ddnetwork.SelectedValue = objReader["network"].ToString();
                    Txt_Stv.Text = objReader["STV_no"].ToString();
                    ddpackage.SelectedValue = objReader["package"].ToString();
                    Txt_packamount.Text = objReader["p_amount"].ToString();
                    Txt_al.Text = objReader["a_la_carte"].ToString();
                    Txt_extraamount.Text = objReader["a_la_carte_amount"].ToString();
                    Txt_Operator.Text = objReader["Operator"].ToString();
                    Txt_custid.Enabled = false;
                    Txt_Name.Enabled = false;
                    Txt_Mob.Enabled = false;
                    Txt_house.Enabled = false;
                    Txt_Block.Enabled = false;
                    Txt_sector.Enabled = false;
                    ddnetwork.Enabled = false;
                    Txt_Stv.Enabled = false;
                    ddpackage.Enabled = false;
                    Txt_packamount.Enabled = false;
                    Txt_al.Enabled = false;
                    Txt_extraamount.Enabled = false;
                }
                ViewState["flag"] = "U";
            }
        }
    }
    protected void Btn_search_Click(object sender, EventArgs e)
    {
        objReader = obj_cable.Customer_id_select(Txt_custid.Text);
        if (objReader.Read())
        {
            Txt_Name.Text = objReader["customer_name"].ToString();
            Txt_Mob.Text = objReader["mobile"].ToString();
            Txt_house.Text = objReader["house_no"].ToString();
            Txt_floor.Text = objReader["hfloor"].ToString();
            Txt_Block.Text = objReader["block"].ToString();
            Txt_sector.Text = objReader["sector"].ToString();
            ddnetwork.SelectedValue = objReader["network"].ToString();
            Txt_Stv.Text = objReader["STV_no"].ToString();
            ddpackage.SelectedValue = objReader["package"].ToString();
            Txt_packamount.Text = objReader["p_amount"].ToString();
            Txt_al.Text = objReader["a_la_carte"].ToString();
            Txt_extraamount.Text = objReader["a_la_carte_amount"].ToString();
            Txt_Operator.Text = objReader["Operator"].ToString();
            lblmsg.Text = "";
        }
        else
        {
            lblmsg.Text = "This Customer Not In Our Database";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        obj_cable.customer_id = Txt_custid.Text;
        obj_cable.from_date =Convert.ToDateTime( Txt_from.Text);
        obj_cable.to_date = Convert.ToDateTime(Txt_todate.Text);
        obj_cable.totalamount = Txt_total.Text;
        obj_cable.Operator = Txt_Operator.Text;
        obj_cable.created_by = Session["user_id"].ToString();
        if (ViewState["flag"].ToString() == "I")
        {
            obj_cable.Flag = "I";
            obj_cable.sno = "0";
            value = obj_cable.Payment_Insert(obj_cable);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            obj_cable.Flag = "U";
            obj_cable.sno = Request.QueryString["s_no"].ToString();
            value = obj_cable.Payment_Insert(obj_cable);
        }
        Response.Redirect("~/Payment/View_Payment.aspx");
    }
}