<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewAlumni.aspx.cs" Inherits="NewAlumni" %>

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
            width: 618px;
            text-align: right;
        }
        .style3
        {
            width: 518px;
        }
        body
        {
            background-color:Aqua;
        }
        
        .style4
        {
            margin-bottom:30px;
            text-align: center;
            font-size: x-large;
            font-family: "Arial Black";
        }
        
        .style5
        {
            width: 618px;
            text-align: right;
            height: 33px;
        }
        .style6
        {
            width: 518px;
            height: 33px;
        }
        .style7
        {
            height: 33px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style4">
    New Alumni Registration form
    </div>
   
    <table class="style1">
        <tr>
            <td bordercolor="#333300" class="style2">
                Username</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" ErrorMessage="Username is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                E-mail:</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Email-Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" ErrorMessage="Email-Pattern is incorrect" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Password</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPass" ErrorMessage="Password is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Confirm password</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxConfirmPass" runat="server" TextMode="Password" 
                    Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxConfirmPass" 
                    ErrorMessage="Confirm password is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPass" ControlToValidate="TextBoxConfirmPass" 
                    ErrorMessage="Both password Must be Same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Country</td>
            <td class="style3">
                <asp:DropDownList ID="Country" runat="server" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="233px">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>UK</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>Russia</asp:ListItem>
                    <asp:ListItem>America</asp:ListItem>
                    <asp:ListItem>africa</asp:ListItem>
                    <asp:ListItem>china</asp:ListItem>
                    <asp:ListItem>Bhutan</asp:ListItem>
                    <asp:ListItem>Sri-Lanka</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="Country" ErrorMessage="Country is Required" ForeColor="Red" 
                    InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bordercolor="#333300" class="style2">
                Nationality</td>
            <td class="style3">
                <asp:TextBox ID="TextBoxNational" runat="server" Width="233px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxNational" ErrorMessage="Nationality is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="margin-left: 63px" Text="Submit" Width="86px" />
            </td>
            <td class="style7">
                </td>
        </tr>
    </table>
   
    </form>
</body>
</html>
