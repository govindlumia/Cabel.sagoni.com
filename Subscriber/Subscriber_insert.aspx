<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Subscriber_insert.aspx.cs" Inherits="Subscriber_Subscriber_insert" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Add Customer Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:0px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Customer Details
 </td>
 </tr>
 <tr>
     <asp:Label ID="Label1" runat="server" Text="" Visible="false"></asp:Label>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Customer Name :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_custome" runat="server" CssClass="textbox" ></asp:TextBox>
             <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="Txt_custome" Display="Dynamic" ErrorMessage="Name"></asp:RequiredFieldValidator>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
      Mobile No :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_mobile" runat="server" CssClass="textbox" ></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ControlToValidate="Txt_mobile" Display="Dynamic" ErrorMessage="Enter Mobile"></asp:RequiredFieldValidator>
      </td>
   </tr>  

   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Landline No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_othercontact" runat="server" CssClass="textbox" ></asp:TextBox>
             <br />
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
      Email Id :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Email" runat="server" CssClass="textbox" ></asp:TextBox>
      </td>
   </tr> 
    <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Address Details
 </td>
 </tr>
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> House No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_house" runat="server" CssClass="textbox" ></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Floor :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_floor" runat="server" CssClass="textbox" ></asp:TextBox>
      </td>
   </tr> 
    <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Block :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Block" runat="server" CssClass="textbox" ></asp:TextBox>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Sector :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_sector" runat="server" CssClass="textbox" ></asp:TextBox>
      </td>
   </tr> 
   
     <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Subcription Details
 </td>
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Network :</td>
   <td valign="middle" class="cellInfo1 "> 
       <asp:DropDownList ID="ddnetwork" runat="server" CssClass="dropdown">
       <asp:ListItem Text="SELECT"></asp:ListItem>
       <asp:ListItem Text="Den Network"></asp:ListItem>
       <asp:ListItem Text="Hathway Network"></asp:ListItem>
       </asp:DropDownList>          
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> STB No :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Stv" runat="server" CssClass="textbox" ></asp:TextBox>
           
         </td>
   
   </tr> 
    <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">VC No :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_vc" CssClass="textbox" runat="server"></asp:TextBox>
         </td>
           <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
   PAF-DG NO :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_PAF" runat="server" CssClass="textbox" ></asp:TextBox>
 </td>
   
  
   
   </tr> 
   <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Package :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:DropDownList ID="ddpackage" runat="server" CssClass="dropdown">
       </asp:DropDownList>
         </td>
           <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
    Amount :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_packamount" runat="server" CssClass="textbox" Text="0.00"></asp:TextBox>
 </td>
   
  
   
   </tr> 
    <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Date Of Connection :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txtconnectiondate" runat="server" CssClass="textbox" ></asp:TextBox>
     <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="Txtconnectiondate" />                                 

      </td>
       <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Renewal Date :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_renewdate" runat="server" CssClass="textbox" ></asp:TextBox>
                <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="Txt_renewdate" />                                 

         </td>


 
  
   </tr> 
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">A-la-carte :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_al" runat="server" TextMode="MultiLine" Height="50px" CssClass="textbox"></asp:TextBox>
         </td>

          <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
    A-la-carte Amount :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_extraamount" runat="server" CssClass="textbox" Text="0.00"></asp:TextBox>
 </td>
   
  
   
   </tr> 
   <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Connection Status :</td>
     <td valign="middle" class="cellInfo1 ">
       <asp:DropDownList ID="ddcstatus" runat="server" CssClass="dropdown">
       </asp:DropDownList>
   </td>
          <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Adv.Payment :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Adv" runat="server" CssClass="textbox" Text="0.00" ></asp:TextBox>
 </td>
   </tr>
   <tr>
     <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Adv. From Date :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Advfrom" runat="server" CssClass="textbox" ></asp:TextBox>
                <ajaxtoolkit:calendarextender ID="calendarextender2" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="Txt_Advfrom" />                                 

         </td>
          <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Adv To Date:</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_advto" runat="server" CssClass="textbox" ></asp:TextBox>
                 <ajaxtoolkit:calendarextender ID="calendarextender4" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="Txt_advto" />                                 

 </td>
  </tr>
     <tr>
      <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Operator :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_operator" runat="server" CssClass="textbox" ></asp:TextBox>
   </td>
     
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Remarks :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_Remarks" runat="server" CssClass="textbox" TextMode="MultiLine" Height="50px"></asp:TextBox>
   </td>
</tr>
     <tr>
 <td colspan="4" style="background-color:#DDDCDD;  padding-left:450px; height:34px ">
 <asp:Button ID="submit"  runat="server" Text="Submit" CssClass="btn btn-info" onclick="submit_Click" 
         />
       <asp:Button  ID="reset" runat="server" Text="Reset" CssClass="btn btn-info" style="margin-right:40px; " />
 </td>
 </tr>
   </table>
   
   
</div>

</center> 
   </div>    
   </div>
   </div>
</asp:Content>

