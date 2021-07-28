<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultpageofStaff.aspx.cs" Inherits="DefaultpageofStaff" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
          #form1
        {
            height: 40px;
        }
        
*{
    padding:0px;
    margin:0px;
}
#menu ul
{
    list-style:none;
}
#menu ul li
{
    background-color:Blue;
    border:solid 1px white;
    width:120px;
    height:35px;
    text-align:center;
    line-height:35px;
    float:left;
}
#menu ul li a
{
    text-decoration:none;
    color:#fff;
    display:block;
}
#menu ul li a:hover
{
    background-color:SkyBlue;
    color:White;
}
body
{
    background-color:Yellow;
}

        .style3
        {
            width: 1601px;
            height: 641px;
        }
    </style>
</head>
<body>
   <form id="form1" runat="server">
    <div id="menu">
        <ul>
        <li><a href="DefaultpageofStaff.aspx">Home</a></li>
         <li><a href="StaffEvents.aspx">Events</a></li>
          <li><a href="StaffGallery.aspx">Gallery</a></li>
            <li><a href="Staffjobs.aspx">Jobs</a></li>
            
            <asp:Button ID="Button1" runat="server" BackColor="#CC0000" ForeColor="White" 
                Height="37px" onclick="Button1_Click" Text="Logout" Width="95px" />
            
            </ul>
            </div>
            </form>
    <p>
        <img alt="" class="style3" src="Images/img/tcsc4.jpeg" /></p>
</body>
</html>
