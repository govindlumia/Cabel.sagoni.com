<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewNOC.aspx.cs" Inherits="NOC_ViewNOC" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

    <center>
    <div class="detailedViewHeader">
  <p class="lvtHeaderText">View NOC Details </p>
  </div>


  <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   
  <table width="100%" cellpadding="0" cellspacing="0" class="big" ><tr>
    <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">NOC From :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="txtfromdate" runat="server" CssClass="textbox" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfv_fromdate" runat="server" SetFocusOnError="true"
                            ControlToValidate="txtfromdate" Display="Dynamic" ErrorMessage="Enter From Date"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cmv_fromdate" ControlToValidate="txtfromdate" Operator="DataTypeCheck"
                            Type="Date" ErrorMessage="Enter Valid Date" Display="Dynamic" runat="server"
                            SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:calendarextender ID="calendarextender3" runat="server" TargetControlID="txtfromdate"
                            Format="dd/MM/yyyy" PopupButtonID="txtfromdate" /> </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">NOC To :</td>
   <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txttodate" runat="server" CssClass="textbox" ></asp:TextBox>
   <asp:RequiredFieldValidator ID="rfv_todate" runat="server" ControlToValidate="txttodate"
                            Display="Dynamic" ErrorMessage="Enter To Date" SetFocusOnError="true"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="cmv_todate2" ControlToValidate="txttodate" ControlToCompare="txtfromdate"
                            Type="Date" Operator="GreaterThanEqual" Display="Dynamic" ErrorMessage="This Date cannot be less than from date"
                            runat="server" SetFocusOnError="true"></asp:CompareValidator>
                        <ajaxtoolkit:calendarextender ID="calendarextender2" runat="server" TargetControlID="txttodate"
                            Format="dd/MM/yyyy" PopupButtonID="txttodate" /></td>
                            </tr>
                            <tr>
                              <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Search :</td>
                               <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_Search" runat="server" CssClass="textbox" ></asp:TextBox></td>
                           <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
                               <asp:Button ID="Btn_Search" runat="server" Text="Search" 
                                   onclick="Btn_Search_Click" /></td>
                           <td valign="middle" class="cellInfo1 "></td>
                            </tr>
  </table>
  </div>
   <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
 <tr>
 <td valign="middle" class="dvtCellLabeltop">
 <div class="mGrid1"  cellspacing="0" rules="cols" border="1" id="gridCustomers" style="width:100%;border-collapse:collapse;float:left">
 <asp:GridView ID="grdLead" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false"  width="100%"
         EmptyDataText ="No Data found for the criteria you selected." 
         PagerStyle-CssClass="pgr" onrowcommand="grdLead_RowCommand"> 
                                
                         <Columns >
                      
                                                <asp:TemplateField  HeaderText ="Print" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/print.png" runat="server" CommandName ="Print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>

                                                <asp:TemplateField  HeaderText ="Edit" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice1" ImageUrl ="~/images/edit.png" runat="server" CommandName ="Edit"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>


                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>

                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>     
                                
                               
                                
                             <asp:BoundField DataField ="sno" HeaderText ="SNO"/>
                             <asp:BoundField DataField ="STV_no" HeaderText ="STV No"/>
                             <asp:BoundField DataField ="DEN" HeaderText ="DEN LCO NO "/>
                              <asp:BoundField DataField ="REF" HeaderText ="REF"/>
                             <asp:BoundField DataField ="dates" HeaderText ="NOC DATE"/>
                             <asp:BoundField DataField ="created_by" HeaderText ="Created By"/>
                             <asp:BoundField DataField ="created_on" HeaderText ="Date"/>
                           
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>
               </td>
  
   </tr>

</table>
   
  </div>
    </center>

 
</asp:Content>

