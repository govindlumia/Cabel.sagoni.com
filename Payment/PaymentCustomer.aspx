<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PaymentCustomer.aspx.cs" Inherits="Payment_PaymentCustomer" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText"> Receive Payment </p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:0px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Payment Details
 </td>
 </tr>
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Customer ID :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_custid" runat="server" CssClass="textbox"  ></asp:TextBox>
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
       <asp:Button ID="Btn_search" runat="server" Text="Search" onclick="Btn_search_Click" 
            /></td>
   <td valign="middle" class="cellInfo1 ">
       <asp:Label ID="lblmsg" runat="server" Text="" style="color:Red"></asp:Label>
      </td>
   </tr>
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Name  :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Name" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
         </td>
       
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Mobile No : </td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Mob" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
      </td>
   </tr>  
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> House No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_house" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Floor :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_floor" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
      </td>
   </tr> 
    <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Block :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Block" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Sector :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_sector" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
      </td>
   </tr>  
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Network :</td>
   <td valign="middle" class="cellInfo1 "> 
       <asp:DropDownList ID="ddnetwork" runat="server" CssClass="dropdown" Enabled="false">
      
       </asp:DropDownList>          
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> STB No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Stv" runat="server" CssClass="textbox" Enabled="false"></asp:TextBox>
           
         </td>
   
   </tr>
   <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Package :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:DropDownList ID="ddpackage" runat="server" CssClass="dropdown" Enabled="false">
       </asp:DropDownList>
         </td>
           <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
    Amount :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_packamount" runat="server" CssClass="textbox" Text="0.00" Enabled="false"></asp:TextBox>
 </td>
   
  
   
   </tr>
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">A-la-carte :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_al" runat="server" TextMode="MultiLine" Height="50px" CssClass="textbox" Enabled="false"></asp:TextBox>
         </td>

          <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
    A-la-carte Amount :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_extraamount" runat="server" CssClass="textbox" Text="0.00" Enabled="false"></asp:TextBox>
 </td>
   
  
   
   </tr>
   
    <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Total Amount (Received):</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_total" Text="0.00" runat="server" CssClass="textbox" ></asp:TextBox>

         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Operator :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Operator"  runat="server" CssClass="textbox" ></asp:TextBox> </td>
         </tr>
         <tr>
           <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Payment From Date:</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_from" runat="server" CssClass="textbox" ></asp:TextBox>
                <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="Txt_from" TargetControlID="Txt_from" />                                 

         </td>
            <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Payment To Date:</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_todate" runat="server" CssClass="textbox" ></asp:TextBox>
                <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Txt_todate" TargetControlID="Txt_todate" />                                 

         </td>  
    </tr>
 <td colspan="4" style="background-color:#DDDCDD;  padding-left:450px; height:34px ">
 <asp:Button ID="Button1"  runat="server" Text="Submit" CssClass="btn btn-info" onclick="Button1_Click" 
         />
       <asp:Button  ID="Button2" runat="server" Text="Reset" CssClass="btn btn-info" style="margin-right:40px; " />
 </td>
 </tr>
   </table>
     
   
   
</div>

</center> 
   </div>    
   </div>
   </div>
</asp:Content>

