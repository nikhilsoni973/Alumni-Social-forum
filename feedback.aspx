<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 663px;
            text-align: right;
        }
        body
        {
            background-color:Cyan;
        }
        .style4
        {
            width: 663px;
            text-align: right;
            height: 36px;
        }
        .style5
        {
            height: 36px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
    <div class="style1">
        Feedback</div>
        </br>
    <table class="style2">
        <tr>
            <td class="style3">
                Email Address</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Message</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="68px" Width="245px" 
                    style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                </td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="89px" BackColor="#0000CC" ForeColor="White" Height="32px" />
            </td>
        </tr>
    </table>
   
    </form>
</body>
</html>
