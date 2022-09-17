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

public partial class Report_Payment_Report : System.Web.UI.Page
{
    SqlDataReader objReader;
    clsCable obj_cable = new clsCable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] == null || Session["user_name"] == null)
        {
            Response.Redirect("~/session.html");
        }
        if (!IsPostBack)
        {
            txtfromdate.Text = DateTime.Today.ToShortDateString();
            txttodate.Text = DateTime.Today.ToShortDateString();
            obj_cable.from_date = Convert.ToDateTime(txtfromdate.Text);
            obj_cable.to_date = Convert.ToDateTime(txttodate.Text);
            grdLead.DataSource = obj_cable.Customer_select_Report(obj_cable);
            grdLead.DataBind();

        }
    }
    protected void btnExcell_Click(object sender, System.EventArgs e)
    {
        string serach_criteria,from_date, to_date;
        obj_cable.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_cable.to_date = Convert.ToDateTime(txttodate.Text);

        grdLead.DataSource = obj_cable.Customer_select_Report(obj_cable);
        grdLead.DataBind();


        obj_cable.Customer_select_Report(obj_cable);

        //serach_criteria = "From Date: " + from_date +
        //                   " ,To Date: " + to_date;



        PrepareGridViewForExport(grdLead);
        ExportGridview();
    }
    private void ExportGridview()
    {
        string attachment = "attachment; filename=Payment_Report.xls";
        Response.ClearContent();
        Response.AddHeader("content-disposition", attachment);
        Response.ContentType = "application/ms-excel";

        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);

        grdLead.RenderControl(htw);
        Response.Write(sw.ToString());
        Response.End();

    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        // Confirms that an HtmlForm control is rendered for the
        //specified ASP.NET server control at run time.
    }
    private void PrepareGridViewForExport(Control gv)
    {

        LinkButton lb = new LinkButton();
        Literal l = new Literal();
        string name = String.Empty;
        for (int i = 0; i < gv.Controls.Count; i++)
        {

            if (gv.Controls[i].GetType() == typeof(LinkButton))
            {

                l.Text = (gv.Controls[i] as LinkButton).Text;

                gv.Controls.Remove(gv.Controls[i]);

                gv.Controls.AddAt(i, l);

            }
            if (gv.Controls[i].GetType() == typeof(ImageButton))
            {

                // l.Text = (gv.Controls[i] as ImageButton);

                gv.Controls.Remove(gv.Controls[i]);

                gv.Controls.AddAt(i, l);

            }

            else if (gv.Controls[i].GetType() == typeof(DropDownList))
            {

                l.Text = (gv.Controls[i] as DropDownList).SelectedItem.Text;

                gv.Controls.Remove(gv.Controls[i]);

                gv.Controls.AddAt(i, l);

            }

            else if (gv.Controls[i].GetType() == typeof(CheckBox))
            {

                l.Text = (gv.Controls[i] as CheckBox).Checked ? "True" : "False";

                gv.Controls.Remove(gv.Controls[i]);

                gv.Controls.AddAt(i, l);

            }

            if (gv.Controls[i].HasControls())
            {

                PrepareGridViewForExport(gv.Controls[i]);


            }

        }

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        obj_cable.from_date = Convert.ToDateTime(txtfromdate.Text);
        obj_cable.to_date = Convert.ToDateTime(txttodate.Text);
        grdLead.DataSource = obj_cable.Customer_select_Report(obj_cable);
        grdLead.DataBind();
    }
}