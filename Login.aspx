<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
            width: 617px;
            height: 55px;
        }
        .style3
        {
            width: 292px;
        }
        .style4
        {
            width: 617px;
            text-align: right;
        }
        #Reset1
        {
            width: 110px;
        }
        body
        {
            background-color:Cyan;
        }
        .style5
        {
            margin-bottom:30px;
            text-align: center;
            font-size: x-large;
            font-family: "Arial Rounded MT Bold";
        }
       
       
        .style6
        {
            width: 292px;
            height: 55px;
        }
        .style7
        {
            height: 55px;
        }
       
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style5">
    Login
        Form</div>
    <table class="style1">
        <tr>
            <td class="style4">
                Email</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxLoginUserId" runat="server" Width="297px" Height="20px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Email is required" ForeColor="Red" 
                    ControlToValidate="TextBoxLoginUserId"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxLoginPass" runat="server" Width="297px" Height="20px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Password is Required" ControlToValidate="TextBoxLoginPass" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" Text="Sign in" Width="105px" 
                    style="margin-left: 34px" onclick="Button1_Click" BackColor="#0000CC" 
                    ForeColor="White" />
                <input id="Reset1" type="reset" value="reset" /><br />
            </td>
            <td class="style7">
                <asp:HyperLink 
                    ID="HyperLinkAlumni" runat="server" NavigateUrl="~/NewAlumni.aspx" 
                    style="text-align: right">Alumni registration</asp:HyperLink>
                </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
