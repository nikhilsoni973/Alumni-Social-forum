<%@ Page Language="C#" AutoEventWireup="true" CodeFile="New Staff.aspx.cs" Inherits="NewStaff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
        .style2
        {
            font-size: x-large;
            text-align: right;
            width: 621px;
        }
        body
        {
            background-color:Aqua;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            font-size: x-large;
            text-align: center;
            font-family: "Arial Rounded MT Bold";
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style5">
        New Student Registration
    </div>
    <table class="style1">
        <tr>
            <td bordercolor="#333300" class="style2">
                Username</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Username is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
       
        <tr>
            <td bordercolor="#333300" class="style2">
                E-mail:</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Email-Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Email-Pattern is incorrect" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Password</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPass" ErrorMessage="Password is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Confirm password</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxConfirmPass" runat="server" TextMode="Password" 
                    Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxConfirmPass" 
                    ErrorMessage="Confirm password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConfirmPass" 
                    ErrorMessage="Both password Must be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
       
          
        <tr>
            <td bordercolor="#333300" class="style2">
                Nationality</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxNational" runat="server" Width="251px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxNational" ErrorMessage="Nationality is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="margin-left: 63px" Text="Signup" Width="106px" BackColor="#0000CC" 
                    ForeColor="White" Height="30px" />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
