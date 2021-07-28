<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewJobAlumni.aspx.cs" Inherits="viewJobAlumni" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body style="font-size: large; text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <h1>
            Here you can apply for job by Reference Email</h1>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:jobconnection %>" 
        SelectCommand="SELECT * FROM [jobs]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" 
        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" 
        CellSpacing="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="company" HeaderText="company" 
                SortExpression="company" />
            <asp:BoundField DataField="Location" HeaderText="Location" 
                SortExpression="Location" />
            <asp:BoundField DataField="jobtitle" HeaderText="jobtitle" 
                SortExpression="jobtitle" />
            <asp:BoundField DataField="qualification" HeaderText="qualification" 
                SortExpression="qualification" />
            <asp:BoundField DataField="skills" HeaderText="skills" 
                SortExpression="skills" />
            <asp:BoundField DataField="package" HeaderText="package" 
                SortExpression="package" />
            <asp:BoundField DataField="experience" HeaderText="experience" 
                SortExpression="experience" />
            <asp:BoundField DataField="openings" HeaderText="openings" 
                SortExpression="openings" />
            <asp:BoundField DataField="Reference" HeaderText="Reference" 
                SortExpression="Reference" />
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
