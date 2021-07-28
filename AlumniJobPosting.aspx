<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AlumniJobPosting.aspx.cs" Inherits="AlumniJobPosting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
         .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 617px;
            text-align: right;
        }
        #Reset1
        {
            width: 95px;
        }
        #Submit1
        {
            width: 95px;
        }
        body
        {
            background-color:Cyan;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            Make a
            Job Posting</h1>
    
    </div>
    <table class="style2">
        <tr>
            <td class="style3">
                Company Name</td>
            <td>
                <asp:TextBox ID="TextCompanyName" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextCompanyName" ErrorMessage="Company Name is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Job Location</td>
            <td>
                <asp:TextBox ID="TextBoxLocation" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxLocation" ErrorMessage="Job Location is required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Job Title</td>
            <td>
                <asp:TextBox ID="TextBoxjobtitle" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxjobtitle" ErrorMessage="Job Title is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Qualification</td>
            <td>
                <asp:TextBox ID="TextBoxQualification" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxQualification" 
                    ErrorMessage="Qualification is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Description</td>
            <td>
                <asp:TextBox ID="TextBoxdescription" runat="server" Height="62px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBoxdescription" ErrorMessage="Description is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Key Skills</td>
            <td>
                <asp:TextBox ID="TextBoxkeyskills" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBoxkeyskills" ErrorMessage="Key Skills is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Package</td>
            <td>
                <asp:TextBox ID="TextBoxpackage" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBoxpackage" ErrorMessage="Package is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Experience</td>
            <td>
                <asp:TextBox ID="TextBoxexperience" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBoxexperience" ErrorMessage="Experience is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                No of jobs opening</td>
            <td>
                <asp:TextBox ID="TextBoxjobopening" runat="server" Width="299px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBoxjobopening" ErrorMessage="Job Opening is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Reference Email</td>
            <td>
                <asp:TextBox ID="TextBoxemail" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBoxemail" ErrorMessage="Reference Email is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
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
