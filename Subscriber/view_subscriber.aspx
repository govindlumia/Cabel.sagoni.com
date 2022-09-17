<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_subscriber.aspx.cs" Inherits="Subscriber_view_subscriber" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
    <script type="text/javascript" src="../Jscript/mtmv.js"></script>
    <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css" />

    <center>
    <div class="detailedViewHeader">
  <p class="lvtHeaderText">View Customer Details </p>
  </div>


  <div class="dvtContentSpace" style="padding:10px 10px 10px 10px">
   
  <table width="100%" cellpadding="0" cellspacing="0" class="big" >
  <td valign="middle" class="dvtCellLabel col-sm-2 control-label "> Search :</td>
   <td valign="middle" class="cellInfo1 "> <asp:TextBox ID="Txt_search" runat="server" CssClass="textbox" ></asp:TextBox> </td>
   <td valign="middle" class="dvtCellLabel col-sm-2 control-label ">
       <asp:Button ID="Btn_Search" runat="server" Text="Search" 
           onclick="Btn_Search_Click" /></td>
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
                                
                              

                                
                             <asp:BoundField DataField ="Customer_id" HeaderText ="ID"/>
                             <asp:BoundField DataField ="customer_name" HeaderText ="Customer Name"/>
                             <asp:BoundField DataField ="mobile" HeaderText ="Mobile"/>
                              <asp:BoundField DataField ="block" HeaderText ="Block"/>
                             <asp:BoundField DataField ="house_no" HeaderText ="HNo."/>
                             <asp:BoundField DataField ="hfloor" HeaderText ="Floor"/>
                             <asp:BoundField DataField ="package" HeaderText ="Package"/>
                            <asp:BoundField DataField ="p_amount" HeaderText ="Amt"/>
                           <asp:BoundField DataField ="a_la_carte" HeaderText ="A-Al-Carte"/>
                            <asp:BoundField DataField ="a_la_carte_amount" HeaderText ="Ala Carte Amt"/>
                            <asp:BoundField DataField ="Connection_Status" HeaderText ="Con.Status"/>
                             <asp:BoundField DataField ="date_of_connection" HeaderText ="Con. date"/>
                           
                                                       
                         </Columns>
                            


                         </asp:GridView>
        		           
			           </div>
               </td>
  
   </tr>

</table>
   
  </div>
    </center>

 
</asp:Content>
