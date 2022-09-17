<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search_value.aspx.cs" Inherits="search_value" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <link rel="stylesheet" type="text/css" href="../css/menu_style.css" />
     <script type="text/javascript" src="../Jscript/mtmv.js"></script>
     <link href ="../css/doplus_style.css" rel="stylesheet" type="text/css"/>
     <div class="detailedViewHeader">
  <p class="lvtHeaderText">Search Result</p>
  </div>

<div class="dvtContentSpace" style="padding:5px 5px 5px 5px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Subscriber List</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div4" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="grdenquery" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
            <Columns >
             <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>

                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField> 
            <asp:TemplateField HeaderText="customer ID">
                                    <ItemTemplate>
                                       <asp:LinkButton ID="lblLeadNo" Text ='<%#Eval("customer_id") %>' runat="server" 
                                            CommandName ="lblLeadNo_Click" ToolTip ="Click to see Lead Detail" 
                                            ForeColor ="Black" onclick="lblLeadNo_Click"  
                                            />
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                             
                             <asp:BoundField DataField ="customer_name" HeaderText ="Customer Name"/>
                             <asp:BoundField DataField ="mobile" HeaderText ="mobile"/>
                              <asp:BoundField DataField ="email" HeaderText ="Email"/>
                             <asp:BoundField DataField ="network" HeaderText ="Network"/>
                             <asp:BoundField DataField ="STV_no" HeaderText ="STB No"/>
                            <asp:BoundField DataField ="package" HeaderText ="package"/>
                             <asp:BoundField DataField ="created_on" HeaderText ="Created Date" />
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
                 </asp:GridView>
        		           
			      </div>

 </td>
  
 </tr>

 </table>
 </td>
 </tr>

 </table>


   </div>
   <div class="dvtContentSpace" style="padding:5px 5px 5px 5px">
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="big">
 
 
 <tr style="background-color:#E7E6E6">
 <td  valign="top"  style="width: 100%; padding-bottom:10px; padding-top:10px; text-align:left; border-left:1px solid #8C8C8C;; border-top:1px solid #8C8C8C;; border-right:1px solid #8C8C8C; "  >
   <label style=" font-family:Arial; font-style:normal; font-weight:bold; color:Black ; font-size:17px;padding-left:20px">Subscriber List</label>
        </td>
             
 </tr>

 <tr>
 <td colspan="4">
 <table width="100%" cellpadding="0" cellspacing="0" class="big" >
   
 <tr>
 <td valign="middle" class="dvtCell" >
 
 <div class="mGrid"  cellspacing="0" rules="cols" border="1" id="Div1" style="width:100%;border-collapse:collapse; text-align:center">
 <asp:GridView ID="GridView1" runat ="server" AutoGenerateColumns ="False"   GridLines ="None"  
 AllowPaging ="false" Width="100%"  EmptyDataText ="No Data found for the criteria you selected." CssClass="mGrid1" 
         PagerStyle-CssClass="pgr"> 
                                
            <Columns >
             <asp:TemplateField HeaderText="sno" Visible= "false">
                                    <ItemTemplate>

                                     <asp:Label ID="lblserialno" runat="server" Text ='<%#Eval("sno") %>' />
                                      
                                    </ItemTemplate>
                                </asp:TemplateField> 
            <asp:TemplateField HeaderText="customer ID">
                                    <ItemTemplate>
                                       <asp:LinkButton ID="lblLeadNo1" Text ='<%#Eval("customer_id") %>' runat="server" 
                                            CommandName ="lblLeadNo1_Click" ToolTip ="Click to see Lead Detail" 
                                            ForeColor ="Black" onclick="lblLeadNo1_Click"  
                                            />
                                    </ItemTemplate>
                                </asp:TemplateField>
                         
                             
                             <%--<asp:BoundField DataField ="customer_id" HeaderText ="Customer ID"/>--%>
                                <asp:BoundField DataField ="customer_name" HeaderText ="Customer Name"/>
                                    <asp:BoundField DataField ="mobile" HeaderText ="Mobile"/>
                             <asp:BoundField DataField ="payment_from" HeaderText ="From Date"/>
                             <asp:BoundField DataField ="payment_to" HeaderText ="To Date "/>
                              <asp:BoundField DataField ="Total_amount" HeaderText ="Total Amount"/>
                             <asp:BoundField DataField ="created_by" HeaderText ="Created By"/>
                             <asp:BoundField DataField ="created_on" HeaderText ="Date"/>
                  </Columns>
                 <PagerStyle CssClass="pgr" />
               
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

