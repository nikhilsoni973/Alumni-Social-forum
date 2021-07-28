<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEvent.aspx.cs" Inherits="AdminEvent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        #Submit1
        {
            width: 80px;
        }
        #Reset1
        {
            width: 80px;
        }
        body
        {
            background-color:Cyan;
        }
        
        .style4
        {
            text-align: center;
        }
        
        .style5
        {
            width: 633px;
            text-align: right;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div>
<h2 class="style4">Events</h2>
</div>
    
    <table class="style1">
        <tr>
            <td class="style5">
                Event Name</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Event Description</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="83px" Width="267px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Event Date</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Submit" />
            </td>
        </tr>
    </table>
    </form>
    
</body>
</html>
