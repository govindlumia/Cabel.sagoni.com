<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_Invoice.aspx.cs" Inherits="Invoice_View_Invoice"Culture ="en-GB" UICulture ="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />
           

<div class="dvtContentSpace" style="padding:10px 10px 10px 5px;width:94.3%; margin-left:30px;margin-top:30px;margin-top:-40">
<table width="100%" cellpadding="0" cellspacing="0" class="big">
  
 <tr>
 <td colspan="4" style="background-color:#DDDCDD; height:30px; padding-left:10px; font-size:13px; border:1px solid #dedede">
 Show Invoice 
 </td>
 </tr>
 <tr>
<td valign="middle" class="dvtCellLabel col-sm-2 control-label ">Search : </td>
    <td valign="middle" class="cellInfo1 "><asp:TextBox ID="txtsearch" runat="server" 
          style="width:80%;height:27px"></asp:TextBox>     
          </td>           
      <td valign="middle" class="cellInfo1" colspan="2">
   
      <asp:Button ID="Submit_Btn"  runat="server" Text="Search" 
        CssClass="btn btn-info" style="margin-top:7px;margin-bottom:-10" onclick="Submit_Btn_Click" />
    
   
     </td>  
   </tr>
  

   
   </table>
   
   
</div>


 
 <table width="100%" cellpadding="0" cellspacing="0"  >
   
    <tr>
 <td>
 <div class="mGrid1"    id="Div1" style="width:94%;border-collapse:collapse; padding-top:5px;margin-left:30px"">
 <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
                         AllowPaging ="false" Width="100%"

                                EmptyDataText ="No lead found for the criteria you selected." 
                            
                           
                             CssClass="mGrid"
            PagerStyle-CssClass="pgr" onrowcommand="GridView1_RowCommand" 
                            onrowdeleting="GridView1_RowDeleting" 
                            onpageindexchanging="GridView1_PageIndexChanging" 
                             PageSize="20"
                           > 
                                
                         <Columns >

                       <asp:TemplateField  HeaderText ="PRINT" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/print.png" runat="server" CommandName ="PRINT" ToolTip ="Click to Print" CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>

                </asp:TemplateField>
                          
                      
                           <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("s_no") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:TemplateField HeaderText="Quotation_No" Visible= "false">
                                    <ItemTemplate>
                                     <asp:Label ID="lblQuo" runat="server" Text ='<%#Eval("Quotation_No") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField>
                                 <asp:BoundField DataField ="Invoice_No" HeaderText ="Invoice"/> 
                                
                                 
                                  <asp:BoundField DataField ="project_name" HeaderText ="Project "/> 
                                   <asp:BoundField DataField ="Customer_Name" HeaderText ="Comp/Firm "/> 
                                    <asp:BoundField DataField ="Contact_Person" HeaderText ="Cont. Person "/> 
                                   <asp:BoundField DataField ="Mobile_No" HeaderText ="Mobile"/> 
                                  
                                    <asp:BoundField DataField ="Remarks" HeaderText ="Remarks "/> 
                                     <asp:BoundField DataField ="Quotation_No" HeaderText ="Quo.NO "/>
                                    <asp:BoundField DataField ="created_on" HeaderText ="Date"/> 
                                   
                                  <%--  <asp:TemplateField  HeaderText ="Delete" >
                                                <ItemTemplate>
                           <asp:ImageButton ID="imgInvoic" ImageUrl ="~/images/deletedata.png" runat="server" CommandName ="Delete" ToolTip ="Click to Delete" CausesValidation ="false"   /> 
                                                                   
                                                </ItemTemplate>

  </asp:TemplateField>  --%>
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>

 </td>
  
 </tr>

  </table>   
   </div>
   </div>
  
</asp:Content>

