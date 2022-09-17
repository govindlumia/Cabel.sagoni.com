<%@ Page Language="C#" AutoEventWireup="true" CodeFile="create_invoic.aspx.cs" Inherits="Invoice_create_invoic" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1"  runat="server">
  
    <link href ="../css/crm_style.css" rel="stylesheet" type="text/css"/>
   
   <%-- <script type="text/javascript" src="Jscript/Menu.js"></script>--%>

    <%--<link href="http://fonts.googleapis.com/css?family=Armata" rel='stylesheet' type='text/css'>--%>
    
    <title>::SAGONI INDIA PRIVATE LIMITED - HelpDesk:: </title>  

   <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
   <script type="text/javascript" src="../Jscript/mtmv.js"></script>
   <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
   <script type="text/javascript" language="javascript">
       window.onload = blinkOn;

       function blinkOn() {
           document.getElementById("blink").style.color = "Black"
           setTimeout("blinkOff()", 300)
       }

       function blinkOff() {
           document.getElementById("blink").style.color = "Red"
           setTimeout("blinkOn()", 300)
       }
 
 
 
</script>

<script language="javascript" type="text/javascript">
    function Addd() {
        var a, b;
        a = parseFloat(document.getElementById("txtqamount").value);

        if (isNaN(a) == true) {
            a = 0;
        }
        var b = parseFloat(document.getElementById("txtrcdamt").value);
        if (isNaN(b) == true) {
            b = 0;
        }
        var balanceamt = ((parseFloat(a)) - (parseFloat(b)));

        var q = balanceamt.toFixed(2);


        document.getElementById("txtbalanceamt").value = q;
      
    }
    </script>
   
</head>
<body style="background-image:url('images/body_bg.jpg'); margin:0px 0px 0px 0px">
    <form id="form1" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" ScriptMode="Release">
 
        </asp:ScriptManager>
<div id="wrapper">

<div style=" width:100%; background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat;">
      <table style=" background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat; width:100%">
      <tr>
      <td valign="middle" style="width:30%; text-align:left">

      <asp:ImageButton ID="ImageButton1" runat ="server" ImageAlign ="Middle" 
              Width="300px" Height="96px" ImageUrl= "~/images/CLOGO.png"  
              style="text-align:center" CausesValidation="False" 
              onclick="ImageButton1_Click" /> 
   
     <%-- <asp:ImageButton ID="ImgCompany" runat ="server" ImageAlign ="Middle" Width="350px" Height="38px" ImageUrl= "images/mkji_logo.png" />  
   --%>
      </td>
     
     <td valign="middle">
     <table width="100%">

     <tr>
     <td valign="middle" colspan="2" style="text-align:right; padding-right:43px">
      <a style="font-size:14px; color:#FFF; font-weight:bold; text-decoration:none">Welcome</a>&nbsp;&nbsp;
      <asp:Label ID="lblusername" runat="server" Text="" Font-Bold="true" ForeColor="#FFF"  style="color:#D8D8D8"></asp:Label>
     </td>
     </tr>

     <tr>
     <td valign="middle" colspan="2" style="text-align:right">
     <asp:HyperLink ForeColor ="#FFFFFF" NavigateUrl ="changePassword.aspx"  ID="HyperLink2" Text ="Change Password" runat ="server" Font-Bold="true" Font-Size="13px" ></asp:HyperLink> <span style="color:#FFF;"> &nbsp;| </span>
	    <asp:LinkButton  ID="LinkButton1" CausesValidation="false" runat="server" ForeColor="#FFFFFF" Font-Bold="true" Font-Size="13px" onclick="LinkButton1_Click"> LOG OUT </asp:LinkButton>
        <span style="color:#FFF;"> | </span>
     </td>
     </tr>

     <tr>

     <td valign="middle" colspan="2" style=" text-align:right; padding-right:23px">
      <asp:TextBox ID="txtsearch" runat="server" CssClass="search_textbox" Placeholder="Search"></asp:TextBox>
     </td>
    
     </tr>
     </table>
     </td>
  
      </tr>
   
  </table>  
 </div>
 <center>

 <div style="background-color:#000; height:30px; width:100%"></div>

 <table width="100%" cellpadding="0" cellspacing="0" style=" height:30px; ">
    
    <tr>
    <td valign="top"  style="width:12%; background-image: url('http://helpdesk.mkjiinfotech.co.in/images/crop.png'); background-repeat: repeat;">
    <ul id="menu-v" style=" ">
    <li><asp:HyperLink ID="Hypl_att" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >EMPLOYEE</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink25" runat="server" NavigateUrl="~/Employee/insert_offer_letter_details.aspx">Generate Offer Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink26" runat="server" NavigateUrl="~/Employee/View_offerletter_details.aspx">View Offer Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink29" runat="server" NavigateUrl="~/Employee/Employee_details.aspx">Insert Employee Details</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink30" runat="server" NavigateUrl="~/Employee/view_employee_details.aspx">View Employee Details</asp:HyperLink></li>
    
      </ul>
    </li>

    <li><asp:HyperLink ID="hypl_sale" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >VENDOR</asp:HyperLink>
   
        <ul class="sub">
         <li><asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Vendor/vendor_entry.aspx">Vendor Entry</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/Vendor/VenderDetails.aspx">View Vendor Details</asp:HyperLink></li>
        </ul>
    </li>
     <li><asp:HyperLink ID="hypl_mark" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >ENQUERY</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Enquery/Enquery.aspx">Enquery Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Enquery/View_enquery.aspx">View Enquery Details</asp:HyperLink></li>
       </ul>
    
    </li>
     
     <li><asp:HyperLink ID="Hypl_payment" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow">QUOTATION</asp:HyperLink>
        <ul class="sub">
        <li><asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/quatations/QuotationEntry.aspx">Quotation Entry</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink22" runat="server" NavigateUrl="~/quatations/Quotation_view.aspx">View Quotation Details</asp:HyperLink></li>
        </ul>
     </li>
      <li><asp:HyperLink ID="hypl_dev" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >INVOICE</asp:HyperLink>
   
     <ul class="sub">
     <li><asp:HyperLink ID="hypldomain" runat="server" NavigateUrl="~/Invoice/create_invoic.aspx">Invoice Entry</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Invoice/View_Invoice.aspx">View Invoice Details</asp:HyperLink>
     </li> 
     </ul>
    </li>
     
     <li><asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="home.aspx" CssClass="arrow" >PURCHASE ORDER</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Purchase_order/purchase_order.aspx">Purchase Order Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Purchase_order/view_purchase_order.aspx">View Purchase Order</asp:HyperLink></li>
      </ul> 
    </li>
    
    <li><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >VENDOR PAYMENT</asp:HyperLink>
   
      <ul class="sub">
      
      <li><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Payments/insert_Payment.aspx">Vender Payment Entry</asp:HyperLink></li>
  
       <li><asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Payments/View_Payment.aspx">View Vender Payment</asp:HyperLink></li>
      </ul>
     </li>
      <li><asp:HyperLink ID="hypl_expn" runat="server" NavigateUrl="home.aspx" CssClass="arrow" >STAFF PAYMENT</asp:HyperLink>
   
      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink27" runat="server" NavigateUrl="~/Payments/Employee_payment.aspx">Employee Payment Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink28" runat="server" NavigateUrl="~/Payments/View_Payment.aspx">View Employee Payment</asp:HyperLink></li>
      
      </ul>
     </li>
          <li><asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="home.aspx" CssClass="arrow" > EXPENSE </asp:HyperLink>

      <ul class="sub">
      <li><asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Expense/Expance_Entry.aspx">Expense Entry</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink20" runat="server" NavigateUrl="~/Expense/view_expance_details.aspx">View Expense Details</asp:HyperLink></li>
      </ul>
     </li>
     <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/home.aspx" CssClass="arrow" >REPORT</asp:HyperLink>
   
     <ul class="sub">
       
           <li><asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/Report/Monthly_ledger.aspx">Monthly Ledger</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink31" runat="server" NavigateUrl="~/Vendor/VenderDetails.aspx">Vender Report</asp:HyperLink></li>
     <li><asp:HyperLink ID="HyperLink33" runat="server" NavigateUrl="~/Enquery/View_enquery.aspx">Enquery Report</asp:HyperLink></li>
     <li><asp:HyperLink ID="hypl_customerreport" runat="server" NavigateUrl="~/quatations/Quotation_view.aspx">Quatation Report</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Purchase_order/view_purchase_order.aspx">Purchase Order Report</asp:HyperLink></li>
       <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Invoice/View_Invoice.aspx">Invoice Report</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/home.aspx">Payment Report</asp:HyperLink></li>
     </ul>
    </li>

    
   
   
</ul>
    </td>
    <td valign="top" style="width:100%;">
    <center>

    
    <div id="content">
         <div>
  <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Invoice Entry</p>
  </div>
    <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px; margin-top:0px">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
  <tr>
   <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px">
   Invoice Details
   </td>
   </tr>
   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Quatation No. :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="txtquatation" runat="server" 
           CssClass="textbox" ontextchanged="txtquatation_TextChanged" 
           AutoPostBack="True"  ></asp:TextBox>
           
         </td>
       <asp:Label ID="lblsno" runat="server" Visible="false"></asp:Label>
         
   </tr>

   <tr>
    
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Company / Firm Name :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_CustomerName" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Contact Person :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_ContactPerson"  runat="server" 
           CssClass="textbox" ></asp:TextBox>
       </td>
         
   </tr>
    
    <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile No. :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Mobile" runat="server" CssClass="textbox"   MaxLength="10"></asp:TextBox>  <br/>
 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
ControlToValidate="Txt_Mobile" Display="Dynamic" ErrorMessage="value"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txt_Mobile"
ErrorMessage="Numeric Values" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
      </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Email ID :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Email" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
           
         </td>
   </tr>
   <%--<tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Telephone No. :</td>
   <td valign="middle" class="cellInfo1 ">

            <asp:TextBox ID="Txt_TelephoneNo" runat="server" 
           CssClass="textbox" MaxLength="10"  ></asp:TextBox>
      </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Other Email ID:</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_FaxNo" runat="server" 
           CssClass="textbox" ></asp:TextBox>
       </td>
       </tr>--%>
       <tr>
      <td valign="middle" class="dvtCellLabel">Company / Firm Address :</td>
         <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_CustomerAddress" runat="server" 
           CssClass="textbox"  TextMode="MultiLine" Height="50px"  ></asp:TextBox>
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Other Contact :</td>
        <td valign="middle" class="cellInfo1 "> 
       <asp:TextBox ID="txt_othercontact" runat="server" 
           CssClass="textbox"></asp:TextBox>
           </td>
         </tr>


         <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Project Name:</td>
         <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txt_projectname" runat="server" 
           CssClass="textbox"  ></asp:TextBox>
         </td>
         <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Area (Size) :</td>
        <td valign="middle" class="cellInfo1 "> 
         <asp:TextBox ID="txt_area" runat="server" 
           CssClass="textbox"  ></asp:TextBox></td>
         </tr>


         <tr>
        <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Location :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_location" runat="server" 
           CssClass="textbox"></asp:TextBox></td>
   
   
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Services :</td>
        <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Remarks" runat="server" 
           CssClass="textbox" TextMode="MultiLine" height="50px"></asp:TextBox></td>

            
   </tr>

   <tr>
        <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Total Amt :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtqamount" runat="server" onKeyUp="javascript:Addd();"
           CssClass="textbox"></asp:TextBox>
              <br />

             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtqamount"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                             ControlToValidate="txtqamount" Display="Dynamic" ErrorMessage="value"></asp:RequiredFieldValidator>
        </td>
   
   
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Recieved Amt :</td>
        <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="txtrcdamt" runat="server" onKeyUp="javascript:Addd();"
           CssClass="textbox" ></asp:TextBox><br />

             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtrcdamt"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="txtrcdamt" Display="Dynamic" ErrorMessage="value"></asp:RequiredFieldValidator>
 

        </td>

            
   </tr>
   <tr>
        <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Balance Amt :</td>
        <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtbalanceamt" runat="server" 
           CssClass="textbox"></asp:TextBox>

            <br />

             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtbalanceamt"
                                                                    ErrorMessage="Numeric & Decimal Values (Like 0.00) are allowed" ValidationExpression="^\d+(\.\d+)?$"></asp:RegularExpressionValidator>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="txtbalanceamt" Display="Dynamic" ErrorMessage="value"></asp:RequiredFieldValidator>

        </td>
   
   
   <td valign="middle" class="cellInfo1" colspan="2"></td>
       
            
   </tr>
   

   <tr>
   <td valign="middle" colspan="4" style="padding-bottom:10px; padding-top:10px; text-align:center; background-color:#DDDCDD">
   <asp:Button ID="Submit_Btn"  runat="server" Text="Submit"  onclick="Submit_Btn_Click1" style="width:90px;height: 30px; border-radius:4px" />
       &nbsp;&nbsp;
       <asp:Button ID="Reset_Btn" runat="server" Text="Reset" 
           style="width:90px;height:30px; border-radius:4px" onclick="Reset_Btn_Click" />
        
   </td>

   </tr>

   </table>

   
     
       
       
</div>
</center>
    </div>  
        </div>
</center>
    </td>
    </tr>

    </table>



 
 </center>


   
   </div>

        <!--endcontent-->
  
    <!--endwrapper-->
    <center>
    <div id="footerwrapper">
	<div style="width:100%; background-color:#333333; height:50px">
    <table  width="960px">
    <tr>
    <td valign="middle" style="text-align:left">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>© 2015 
        SAGONI INDIA PRIVATE LIMITED All rights reserved</b></a><br />
    </p>
    </td>
    <td valign="middle" style="text-align:right">
    <p style="margin-top:15px">
    <a href="#" style="color:white; font-family:Calibri; font-size:12px; text-decoration:none;"><b>Powered By SOGONI INDIA PRIVATE LIMITED SOFTWARE</b></a><br />
    </p>
    </td>
    </tr>
    </table>
    </div>
</div>
    </center>
  
    </form>
</body>
</html>
