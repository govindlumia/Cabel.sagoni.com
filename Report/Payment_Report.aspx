<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment_Report.aspx.cs" Inherits="Report_Payment_Report" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

   
  
<div class="detailedViewHeader">
<table width="100%">
<tr>
<td valign="middle" style="width:50%"><p class="lvtHeaderText"> Payments Report </p></td>
<td valign="middle" style="text-align:right">
<asp:Button ID="btnExcell" runat="server" Text ="Export as Excel"  
        align="absmiddle" Font-Bold="True" style="margin-top:-10px; color:Maroon " 
        onclick="btnExcell_Click"/></p>

</td>
</tr>
</table>
</div>

<div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">

<tr style="border-top:1px solid #dedede;">
   <td valign="middle" class="dvtCellLabeltop" style="width:150px" >Renewal From : </td>
     <td valign="middle" class="cellInfo" style="width:150px">
   <asp:TextBox ID="txtfromdate" runat="server" Cssclass="date_textbox"  style="width:150px"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="txtfromdate" />

   </td>
     <td valign="middle" class="dvtCellLabeltop" style="width:150px">Renewal To : </td>
   <td valign="middle" class="cellInfo">
      <asp:TextBox ID="txttodate" runat="server" CssClass="date_textbox" style="width:150px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:calendarextender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="txttodate" />
 </td>
 </tr>
 

   <tr>
   <td valign="middle" class="dvtCellLabel" colspan="4" style="padding-bottom:10px; text-align:center; padding-top:10px;">
   <asp:ImageButton ID="ImageButton1" runat="server" 
           ImageUrl="~/images/submitButton.png" onclick="ImageButton1_Click"  />&nbsp;&nbsp;
 
   </td>
   </tr>
 
  <tr>
 <td colspan="4" style="padding-top:20px">
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid1"  Width="100%" id="gridCustomers" style="border-collapse:collapse; padding-top:0px; text-align:left">
 
        		           
		
        <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%" 
         EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid" ShowFooter= "true"
         PagerStyle-CssClass="pgr"> 
                             <FooterStyle BackColor="#CCCC99" HorizontalAlign="left" Font-Bold ="true" />   
                         <Columns >
                         <asp:BoundField DataField ="sno" HeaderText ="S.No"/>
                          <asp:BoundField DataField ="customer_id" HeaderText ="Customer ID"/>
                             <asp:BoundField DataField ="customer_name" HeaderText ="Customer Name"/>
                             <asp:BoundField DataField ="mobile" HeaderText ="Mobile"/>
                              
                                
                              <asp:BoundField DataField ="network" HeaderText ="Network"/>
                                <asp:BoundField DataField ="STV_no" HeaderText ="STB No"/>
                             <asp:BoundField DataField ="package" HeaderText ="Package"/>
                            <asp:BoundField DataField ="p_amount" HeaderText ="Amt"/>
                             <asp:BoundField DataField ="a_la_carte" HeaderText ="A-Al-Carte"/>
                           <asp:BoundField DataField ="a_la_carte_amount" HeaderText ="Ala Carte Amt"/>
                              <asp:BoundField DataField ="date_of_connection" HeaderText ="Con. date"/>
                            <asp:BoundField DataField ="Connection_Status" HeaderText ="Con.Status"/>
                           <asp:BoundField DataField ="rewenal_date" HeaderText ="Rewenal Date"/>
                         <asp:BoundField DataField ="Adv_payment" HeaderText ="Adv Payment"/>
                         <asp:BoundField DataField ="Adv_from_Date" HeaderText ="Adv From Date"/>
                         <asp:BoundField DataField ="Adv_to_Date" HeaderText ="Adv To Date"/>
                         <asp:BoundField DataField ="vc_no" HeaderText ="VC No"/>
                         <asp:BoundField DataField ="PAF" HeaderText ="PAF"/>
                         <asp:BoundField DataField ="Operator" HeaderText ="Operator"/>
                             <asp:BoundField DataField ="remarks" HeaderText ="Remarks"/>                              
                         </Columns>
                           </asp:GridView>  
        	           </div>

 </td>
  
 </tr>

  </table>
   </td>
   </tr>
   
  </table>
  </div>
  
   


 
 
</asp:Content>

