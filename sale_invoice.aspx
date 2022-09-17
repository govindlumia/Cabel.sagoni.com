<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sale_invoice.aspx.cs" Inherits="sale_invoice" Culture="en-GB" UICulture="en-GB" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxtoolkit" %>
<%@ Register TagPrefix="Ajaxified" Assembly="Ajaxified" Namespace="Ajaxified" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>::PRINT NOC ::</title>
    <style type="text/css">
#wrapper{
		width:800px;
		margin:0px auto;
		font:11px tahoma, Arial, Helvetica, sans-serif;
		}

    </style>
</head>
<body style="margin:5px 0px 0px 0px">
    <form id="form1" runat="server">
    <center>
    <div id="wrapper">
    <table width="100%" cellpadding="2" cellspacing="0" style=" border: 1px solid #8C8C8C;padding:2px 2px 2px 2px ">
    <tr>
    <td valign="top" style="text-align:center">
    <table>
    <tr>
    <td valign="middle" style="width:400px; text-align:left; padding-left:5px">
     <img alt="" src="images/CLOGO.png"  width="280px" height="90px" />
    </td>
    <td valign="middle" style="width:400px; text-align:right; padding-right:10px">
<%--    <img alt="" src="images/doplus_invoice.png" width="172px" height="50px"/>
--%>    </td>
    </tr>
    </table>
   
    </td>
    </tr>

    <tr>
    <td>
    <%-- INVOICE DETAILS--%>
    
    <table width="100%" cellpadding="0" cellspacing="0" style="border:1px solid #8C8C8C">


    <tr>
    <td valign="middle" style="width:480px; padding-left:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:left; width:325px; line-height:16px" border="1" bordercolor="#8C8C8C" >
	<tr>
    <td width="110" valign="top" bgcolor="#CECECE">DEN LCO NO  : </td>
	<td width="225" valign="top"><asp:Label ID="lblDEN" runat="server" ></asp:Label></td>
	</tr>
	<tr>
    <td width="110" valign="top" bgcolor="#CECECE">REF :</td>
    <td width="225" valign="top"><asp:Label ID="lblREF" runat="server" ></asp:Label></td>
	</tr>
   </table>
    </td>
    <td valign="top" style="width:400px; padding-right:5px; padding-top:10px; padding-bottom:10px; text-align:left">
    <table cellspacing="0" cellpadding="4" style="float:right; width:325px; line-height:16px" border="1" bordercolor="#8C8C8C" >
	
     <tr>
    <td width="110" valign="top" bgcolor="#CECECE"> Date :</td>
    <td valign="top"><asp:Label ID="lblDate" runat="server" ></asp:Label></td>
	</tr>
    </table>
    </td>
    </tr>

    </table>

    <%--INVOICE DETAILS ENDS--%>
    </td>
    </tr>

    <tr>
    <td valign="middle">
    
    <%--SERVICE DETAILS--%>

    <table width="100%" cellpadding="2" cellspacing="0" style="border:1px solid #8C8C8C">
    
    <tr>
    <td valign="top" colspan="4" style="text-align:left;">
    <table width="100%" cellpadding="0" cellspacing="0" style="margin-top:-2px">
	<tr>

	<td valign="top" style="border-top:1px solid #8C8C8C; text-align:justify; ">
<strong><p style="font-size:12px; padding-left:280px;"> TO WHOM SO EVER IT MAY CONCERN </p></strong>
<p style="padding-left:30px; padding-right:30px;">IT IS HEREBY CONFIRM THAT WE HAVE NO – OBJECTION TO TRANSFER THE FOLLOWING STB TO ANY AREA  AFTER  REMOVING THIS STB NO.  FROM OUR ACCOUNT  .</p><br />
<p style="padding-left:30px; padding-right:30px;">PLEASE CONSIDER THIS STB AS REMOVED FROM OUR ACCOUNT WITH IMMEDIATE EFFECT .</p>
</td>
	</tr>
    </table>
    </td>
    </tr>

    </table>

    </td>
    </tr>

    <tr style="height:20px; float:left">

    <td ><strong> STB NO .<asp:Label ID="lblstb" runat="server" Text="" style="margin-left:30px"/></strong></td>

    <%--<asp:Panel runat="server" ID="pnlcompanytindetails" Visible="true">
    <td valign="middle" style="height:10px; color:#000; padding-left:5px" >
    <b>Service Tax No. : </b> ABLPU3969Q5D001 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <b>PAN No. : </b> ABLPU3969Q
    </td>
    
    </asp:Panel>--%>

    
    </tr>

    <tr>
    <td valign="top">
    <table width="100%" cellpadding="0" cellspacing="0" style=" border:1px solid #8C8C8C ; background-color:#E1E1E1">
	<tr>
	<td valign="middle" width="55%">
    
    <p align="left" style="margin-left:5px; margin-top:-5px"> <br />
	<strong>ANKIT CABLE VISION</strong>
    </p>
	<p align="left" style="font-size:10px; margin-top:-10px; margin-left:5px">
    C- 937 , NANDGRAM , GZB  <br /> LCOGZB072<br /> 
    
    
    </p>

    </td>
	<td width="45%" style="text-align:right; padding-right:10%">
    <b>Auth.Signatory
</b>
    </td>
	</tr>
    </table>
    </td>
    </tr>

    </table>
    
    </div>
    </center>
    </form>
</body>
</html>
