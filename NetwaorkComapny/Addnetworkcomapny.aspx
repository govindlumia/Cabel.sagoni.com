<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Addnetworkcomapny.aspx.cs" Inherits="NetwaorkComapny_Addnetworkcomapny" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">Add Network Company Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:0px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter Network Company Details
 </td>
 </tr>
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Comapny Name :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_company" runat="server" CssClass="textbox" ></asp:TextBox>
             <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ControlToValidate="Txt_company" Display="Dynamic" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
           
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
      Starting Date :</td>
   <td valign="middle" class="cellInfo1 ">
 <asp:TextBox ID="Txt_Date" runat="server" CssClass="textbox" ></asp:TextBox>
    <ajaxtoolkit:calendarextender ID="calendarextender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="Image1" TargetControlID="Txt_Date" />                                 
    
      </td>
   </tr>  
   <tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Remarks :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_remarks" runat="server" CssClass="textbox" TextMode="MultiLine" Height="50px" ></asp:TextBox>
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

