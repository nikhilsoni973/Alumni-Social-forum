<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            width: 667px;
            text-align: right;
        }
        .style4
        {
            height: 26px;
            width: 667px;
            text-align: right;
        }
        .style5
        {
            text-align: center;
            font-size: x-large;
            font-family: "Arial Rounded MT Bold";
        }
        body
        {
            background-color:Cyan;
        }
        
        #Reset1
        {
            width: 104px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="style5">
   Admin Login
   </div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    Username</td>
                <td>
                    <asp:TextBox ID="TextBoxAdminname" runat="server" Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Username is Required" ForeColor="Red" 
                        ControlToValidate="TextBoxAdminname"></asp:RequiredFieldValidator>
                </td>
            </tr>
           
            <tr>
                <td class="style4">
                    Password</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxadminPassword" runat="server" Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Password is Required" ForeColor="Red" 
                        ControlToValidate="TextBoxadminPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="BtnLAdmin" runat="server" style="margin-left: 48px" 
                        Text="Sign in" Width="133px" onclick="BtnLAdmin_Click" BackColor="#0000CC" 
                        ForeColor="White" />
                    </td>
            </tr>
        </table>
    

    </form>
</body>
</html>
