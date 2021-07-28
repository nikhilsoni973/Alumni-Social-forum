<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGallery.aspx.cs" Inherits="AdminGallery" %>

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
            width: 575px;
        }
        .style3
        {
            width: 575px;
            height: 28px;
            text-align: right;
        }
        .style4
        {
            height: 28px;
        }
        .style5
        {
            width: 575px;
            text-align: right;
        }
        .style6
        {
            text-align: center;
        }
        body
        {
            background-color:Cyan;
        }
        
            
        #Submit1
        {
            width: 78px;
        }
        
            
    </style>
    <script language="javascript" type="text/javascript">
<!--

        function Submit1_onclick() {

        }

// -->
    </script>
</head>
<body>
<div>
<h2 class="style6">Update Event Gallery</h2>
</div>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style3">
                Event Name</td>
            <td class="style4">
                <asp:TextBox ID="Text1" runat="server" Width="217px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Text1" ErrorMessage="Event Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Event
                Image</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="280px" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="FileUpload1" ErrorMessage="Event Image is Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#0000CC" ForeColor="White" 
                    onclick="Button1_Click" Text="Upload" Width="77px" />
                <input id="Reset1" 
                    type="reset" value="Cancel" /><asp:Label ID="Label1" runat="server" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <div class="style6">
    
    </div>
    </form>
    </body>
</html>
