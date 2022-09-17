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


public partial class Invoice_create_invoic : System.Web.UI.Page
{
    clsSales objsales = new clsSales();
    clsUser objuser = new clsUser();
    maincode obj_main = new maincode();
    SqlDataReader objReader;
    string value;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Admin_Login.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
    protected void Submit_Btn_Click1(object sender, EventArgs e)
    {
        obj_main.s_no = "0";
      
        obj_main.Quotation_No = txtquatation.Text;
        obj_main.location = Txt_location.Text;
        obj_main.area = txt_area.Text;
        obj_main.project_name = txt_projectname.Text;
        obj_main.other_contact = txt_othercontact.Text;
        obj_main.Customer_Name = Txt_CustomerName.Text;
        obj_main.Customer_Address = Txt_CustomerAddress.Text;
        obj_main.Remarks = Txt_Remarks.Text;
        obj_main.Email = Txt_Email.Text;
        obj_main.Mobile_No = Txt_Mobile.Text;
        obj_main.Contact_Person = Txt_ContactPerson.Text;
        obj_main.created_by = "1";
        obj_main.amount = txtqamount.Text;
        obj_main.Amount_Paid = txtrcdamt.Text;
        obj_main.Rest_Amount = txtbalanceamt.Text;
       
       
        //if (ViewState["flag"].ToString() == "I")
        //{
        obj_main.flag = "I";

        value = obj_main.Invoice_insert(obj_main);
        Response.Redirect("~/Invoice/View_Invoice.aspx");
    }
    protected void txtquatation_TextChanged(object sender, EventArgs e)
    {
        objReader = obj_main.Quotation_filter(txtquatation.Text.ToString());
        if (objReader.Read())
        {

            Txt_location.Text = objReader["location"].ToString();
            txt_area.Text = objReader["area"].ToString();
            txt_projectname.Text = objReader["project_name"].ToString();
            txt_othercontact.Text = objReader["other_contact"].ToString();
            Txt_CustomerName.Text = objReader["Customer_Name"].ToString();
            Txt_CustomerAddress.Text = objReader["Customer_Address"].ToString();
            Txt_Remarks.Text = objReader["Remarks"].ToString();
            Txt_Email.Text = objReader["Email"].ToString();
            Txt_Mobile.Text = objReader["Mobile_No"].ToString();
            Txt_ContactPerson.Text = objReader["Contact_Person"].ToString();
            lblsno.Text = objReader["s_no"].ToString();
            objReader = obj_main.Quotation_product_filter(lblsno.Text.ToString());
             if (objReader.Read())
             {

                 txtqamount.Text = objReader["total_amt"].ToString();
                 
             }


        }
        else
        {
            //lblMsg.Visible = true;
            //lblMsg.Text = "Please Check the Mobile No./Contact No.";
            // return;
        }
    }
    protected void Reset_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/home.aspx");
    }
}