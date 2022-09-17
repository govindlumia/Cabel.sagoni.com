<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NOC_Entry.aspx.cs" Inherits="NOC_NOC_Entry" Culture="en-GB" UICulture="en-GB"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

<div class="rightside">
                 <div class="detailedViewHeader">
  <p  class="lvtHeaderText">NOC Entry</p>
  </div>

                <div class="content">
                    
                 <div>

                 <center>
<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:85%; margin-left:0px;margin-top:30px;margin-bottom:30px;">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Enter NOC Details
 </td>
 </tr>
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> STB NO :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_STB" runat="server" CssClass="textbox"  ></asp:TextBox>
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
       <asp:Button ID="Btn_search" runat="server" Text="Search" 
           onclick="Btn_search_Click" /></td>
   <td valign="middle" class="cellInfo1 ">
       <asp:Label ID="lblmsg" runat="server" Text="" style="color:Red"></asp:Label>
      </td>
   </tr>
 <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> DEN LCO NO  :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Den" runat="server" CssClass="textbox" ></asp:TextBox>
         </td>
       
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">REF : </td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="Txt_Ref" runat="server" CssClass="textbox" ></asp:TextBox>
      </td>
   </tr>  
  <tr>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Date :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_date" runat="server" CssClass="textbox" ></asp:TextBox>
     <ajaxtoolkit:calendarextender ID="calendarextender4" runat="server" Format="dd/MM/yyyy" PopupButtonID="Txt_date" TargetControlID="Txt_date" />                                 
        
         </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
    </td>
   <td valign="middle" class="cellInfo1 ">

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


