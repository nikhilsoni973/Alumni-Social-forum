<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="ViewFeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background-color:Cyan;
        }
        
        .style1
        {
            font-size: xx-large;
        }
        
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <h2 class="style1">
            All received Feedbacks</h2>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>" 
        SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="emailaddress" HeaderText="emailaddress" 
                SortExpression="emailaddress" />
            <asp:BoundField DataField="message" HeaderText="message" 
                SortExpression="message" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </form>
</body>
</html>
