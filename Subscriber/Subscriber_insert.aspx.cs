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

public partial class Subscriber_Subscriber_insert : System.Web.UI.Page
{
    clsCable obj_cable = new clsCable();
    SqlDataReader objReader;
    string value;



    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            ViewState["flag"] = "I";
            Txtconnectiondate.Text = DateTime.Now.ToShortDateString();
            Txt_Advfrom.Text = DateTime.Now.ToShortDateString();
            Txt_advto.Text = DateTime.Now.ToShortDateString();
            Txt_renewdate.Text = DateTime.Now.ToShortDateString();

            objReader = obj_cable.dd_NetworkCompany_select();
            ddnetwork.DataSource = objReader;
            ddnetwork.DataTextField = "company_name";
            ddnetwork.DataValueField = "company_name";
            ddnetwork.DataBind();
            ddnetwork.Items.Insert(0, "Select Network");
            ddnetwork.Items[0].Value = "0";
            ddnetwork.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_cable.package_dd();
            ddpackage.DataSource = objReader;
            ddpackage.DataTextField = "pname";
            ddpackage.DataValueField = "pname";
            ddpackage.DataBind();
            ddpackage.Items.Insert(0, "Select Package");
            ddpackage.Items[0].Value = "0";
            ddpackage.SelectedIndex = 0;
            objReader.Close();

            objReader = obj_cable.connectionstatus_dd();
            ddcstatus.DataSource = objReader;
            ddcstatus.DataTextField = "cname";
            ddcstatus.DataValueField = "cname";
            ddcstatus.DataBind();
            ddcstatus.Items.Insert(0, "Select Status");
            ddcstatus.Items[0].Value = "0";
            ddcstatus.SelectedIndex = 0;
            objReader.Close();
            if (Request.QueryString["seno"] != null)
            {
                objReader = obj_cable.Customer_update_view(Request.QueryString["seno"].ToString());
                if (objReader.Read())
                {
                    Txt_vc.Text = objReader["vc_no"].ToString();
                    Txt_PAF.Text = objReader["PAF"].ToString();
                    Txt_operator.Text = objReader["Operator"].ToString();
                    Txt_custome.Text = objReader["customer_name"].ToString();
                    Txt_mobile.Text = objReader["mobile"].ToString();
                    Txt_othercontact.Text = objReader["other_contact"].ToString();
                    Txt_Email.Text = objReader["email"].ToString();
                    Txt_house.Text = objReader["house_no"].ToString();
                    Txt_floor.Text = objReader["hfloor"].ToString();
                    Txt_Block.Text = objReader["block"].ToString();
                    Txt_sector.Text = objReader["sector"].ToString();
                    ddnetwork.SelectedValue = objReader["network"].ToString();
                    Txt_Stv.Text = objReader["STV_no"].ToString();
                    ddpackage.SelectedValue = objReader["package"].ToString();
                    Txt_packamount.Text = objReader["p_amount"].ToString();
                    Txtconnectiondate.Text = objReader["date_of_connection"].ToString();
                    Txt_renewdate.Text = objReader["rewenal_date"].ToString();
                    Txt_al.Text = objReader["a_la_carte"].ToString();
                    Txt_extraamount.Text = objReader["a_la_carte_amount"].ToString();
                    ddcstatus.SelectedValue = objReader["Connection_Status"].ToString();
                    Txt_Adv.Text = objReader["Adv_payment"].ToString();
                    Txt_Advfrom.Text = objReader["Adv_from_Date"].ToString();
                    Txt_advto.Text = objReader["Adv_to_Date"].ToString();
                    Txt_Remarks.Text = objReader["remarks"].ToString();
                }
                ViewState["flag"] = "U";
            }
            //else if (Request.QueryString["LeadId"] != null)
            //{
            //    objReader = obj_cable.CustomerID_select(Request.QueryString["LeadId"].ToString());
            //    if (objReader.Read())
            //    {
            //        Label1.Text = objReader["sno"].ToString();
            //        Txt_vc.Text = objReader["vc_no"].ToString();
            //        Txt_PAF.Text = objReader["PAF"].ToString();
            //        Txt_operator.Text = objReader["Operator"].ToString();
            //        Txt_custome.Text = objReader["customer_name"].ToString();
            //        Txt_mobile.Text = objReader["mobile"].ToString();
            //        Txt_othercontact.Text = objReader["other_contact"].ToString();
            //        Txt_Email.Text = objReader["email"].ToString();
            //        Txt_house.Text = objReader["house_no"].ToString();
            //        Txt_floor.Text = objReader["hfloor"].ToString();
            //        Txt_Block.Text = objReader["block"].ToString();
            //        Txt_sector.Text = objReader["sector"].ToString();
            //        ddnetwork.SelectedValue = objReader["network"].ToString();
            //        Txt_Stv.Text = objReader["STV_no"].ToString();
            //        ddpackage.SelectedValue = objReader["package"].ToString();
            //        Txt_packamount.Text = objReader["p_amount"].ToString();
            //        Txtconnectiondate.Text = objReader["date_of_connection"].ToString();
            //        Txt_renewdate.Text = objReader["rewenal_date"].ToString();
            //        Txt_al.Text = objReader["a_la_carte"].ToString();
            //        Txt_extraamount.Text = objReader["a_la_carte_amount"].ToString();
            //        ddcstatus.SelectedValue = objReader["Connection_Status"].ToString();
            //        Txt_Adv.Text = objReader["Adv_payment"].ToString();
            //        Txt_Advfrom.Text = objReader["Adv_from_Date"].ToString();
            //        Txt_advto.Text = objReader["Adv_to_Date"].ToString();
            //        Txt_Remarks.Text = objReader["remarks"].ToString();
            //    }


            //}
           
        }
    }
        
    protected void submit_Click(object sender, EventArgs e)
    {

        obj_cable.vc_no = Txt_vc.Text;
        obj_cable.PAF = Txt_PAF.Text;
        obj_cable.Operator = Txt_operator.Text;
        obj_cable.customer_name = Txt_custome.Text;
        obj_cable.mobile = Txt_mobile.Text;
        obj_cable.other_contact = Txt_othercontact.Text;
        obj_cable.email = Txt_Email.Text;
        obj_cable.house_no = Txt_house.Text;
        obj_cable.hfloor = Txt_floor.Text;
        obj_cable.block = Txt_Block.Text;
        obj_cable.sector = Txt_sector.Text;
        obj_cable.network = ddnetwork.SelectedValue.ToString();
        obj_cable.STV_no = Txt_Stv.Text;
        obj_cable.package = ddpackage.SelectedValue.ToString();
        obj_cable.p_amount = Txt_packamount.Text;
        obj_cable.date_of_connection = Convert.ToDateTime(Txtconnectiondate.Text);
        obj_cable.rewenal_date = Convert.ToDateTime(Txt_renewdate.Text);
        obj_cable.a_la_carte = Txt_al.Text;
        obj_cable.a_la_carte_amount = Txt_extraamount.Text;
        obj_cable.Connection_Status = ddcstatus.SelectedValue.ToString();
        obj_cable.Adv_payment = Txt_Adv.Text;
        obj_cable.Adv_from_Date = Convert.ToDateTime(Txt_Advfrom.Text);
        obj_cable.Adv_to_Date = Convert.ToDateTime(Txt_advto.Text);
        obj_cable.remarks = Txt_Remarks.Text;
        obj_cable.created_by = Session["user_id"].ToString();
        if (ViewState["flag"].ToString() == "I")
        {
            obj_cable.Flag = "I";
            obj_cable.sno = "0";
            obj_cable.customer_id = "0";
            value = obj_cable.Customer_insert(obj_cable);
        }
        else if (ViewState["flag"].ToString() == "U")
        {
            
                obj_cable.Flag = "U";
                obj_cable.sno = Request.QueryString["seno"].ToString();
                value = obj_cable.Customer_insert(obj_cable);
           
            //else if (Request.QueryString["LeadId"] != null)
            //{
            //    obj_cable.Flag = "U";
            //    obj_cable.sno = Label1.Text;
            //    obj_cable.customer_id = Request.QueryString["LeadId"].ToString();
            //    value = obj_cable.Customer1_insert(obj_cable);
            //}
        }
        Response.Redirect("~/Subscriber/view_subscriber.aspx");
    }
}