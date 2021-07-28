<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stafflogin.aspx.cs" Inherits="StaffLlogin" %>

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
            width: 523px;
            text-align: center;
            height: 33px;
        }
        .style4
        {
            width: 523px;
            height: 26px;
            text-align: right;
        }
        .style5
        {
            height: 26px;
            text-align: left;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            width: 523px;
            text-align: right;
        }
        .style8
        {
            text-align: left;
            height: 33px;
        }
       body
       {
           background-color:Cyan;
       }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        Student login</div>
    <table class="style2">
        <tr>
            <td class="style4">
                Email</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxStaffUser" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Email is Required" ForeColor="Red" 
                    ControlToValidate="TextBoxStaffUser"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Password</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxStaffpass" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password is Required " ForeColor="Red" 
                    ControlToValidate="TextBoxStaffpass"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style8">
                <asp:Button ID="Button_Login" runat="server" ForeColor="White" 
                    style="margin-left: 87px" Text="Sign in" Width="108px" 
                    onclick="Button1_Click" BackColor="Blue" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
