<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Faulty_Entry.aspx.cs" Inherits="Faulty_Faulty_Entry" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Add Fault Replacement Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:0px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Subscriber Details
 </td>
 </tr>
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> STB No. :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_STB" runat="server" TextMode="MultiLine" Height="60px" CssClass="textbox" ></asp:TextBox>
             <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="Txt_STB" Display="Dynamic" ErrorMessage="Enter STB No"></asp:RequiredFieldValidator>
         </td>
       
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
       Date : </td>
   <td valign="middle" class="cellInfo1 ">
       <asp:TextBox ID="Txt_date" CssClass="textbox" runat="server"></asp:TextBox>
     <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Txt_date" TargetControlID="Txt_date" />                                 

      </td>
   </tr>  
   <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Status :</td>
   <td valign="middle" class="cellInfo1 ">
       <asp:DropDownList ID="ddstatus" runat="server" CssClass="dropdown">
       </asp:DropDownList>
 </td>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
     Remarks :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Remarks" runat="server" CssClass="textbox"  TextMode="MultiLine" Height="50px"></asp:TextBox>
 </td>

 </tr>
    <tr>
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

