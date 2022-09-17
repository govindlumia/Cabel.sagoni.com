<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="View_faulty.aspx.cs" Inherits="Faulty_View_faulty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

    <center>
    <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Faulty Details </p>
  </div>


  <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Search :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_search" runat="server" CssClass="textbox" ></asp:TextBox> </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
       <asp:Button ID="Btn_Search" runat="server" Text="Search" 
           onclick="Btn_Search_Click"  /></td>
   <td valign="middle" class="cellInfo1 "></td>
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
                      
                                                <%--<asp:TemplateField  HeaderText ="Print" >
                                                <ItemTemplate>
            <asp:ImageButton ID="imgInvoice" ImageUrl ="~/images/print.png" runat="server" CommandName ="Print"  CausesValidation ="false"   /> 
                                                     
                                                </ItemTemplate>
                                                </asp:TemplateField>--%>

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
                                
                               
                                
                             <asp:BoundField DataField ="stb" HeaderText ="STB"/>
                             <asp:BoundField DataField ="send_date" HeaderText ="Send Date"/>
                             <asp:BoundField DataField ="status_s" HeaderText ="Status"/>
                             <asp:BoundField DataField ="remarks" HeaderText ="Remarks"/>
                             <asp:BoundField DataField ="created_by" HeaderText ="Created By"/>
                             <asp:BoundField DataField ="created_date" HeaderText ="Date"/>
                           
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>
               </td>
  
   </tr>

</table>
   
  </div>
    </center>

 
</asp:Content>

