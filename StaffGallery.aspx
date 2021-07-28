<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StaffGallery.aspx.cs" Inherits="StaffGallery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-size: larger;
        }
    </style>
</head>
<body style="font-size: larger">
    <form id="form1" runat="server">
    <div class="style1">
    
        Gallery<asp:Button ID="Button1" runat="server" 
            Text="DisplayImage" onclick="Button1_Click" />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns=false>
     <Columns>
       <asp:TemplateField HeaderText="user image">
       <ItemTemplate>
           <asp:Image ID="Image1" runat="server" width="300px" Height="300px" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte[])Eval("image")) %>'/>

       </ItemTemplate>


       </asp:TemplateField>

       </Columns>


    </asp:GridView>
    </form>
</body>
</html>
