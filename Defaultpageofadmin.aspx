<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Defaultpageofadmin.aspx.cs" Inherits="Defaultpageofadmin" %>

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

        .style4
        {
            max-width:100%;
            height:auto;
            width: 1627px;
        }
        .style5
        {
            text-align: center;
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="menu">
        <ul>
        <li><a href="Defaultpageofadmin.aspx">Home</a></li>
    
          <li><a href="AdminEvent.aspx">Events</a></li>
           <li><a href="AdminGallery.aspx">Gallery</a></li>
            <li><a href="Adminjobposting.aspx">jobs</a></li>
            <li><a href="ViewFeedback.aspx">Feedback</a></li>
           
        
           
            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" 
                Height="36px" onclick="Button1_Click" Text="Logout" Width="78px" />
           
        
           
        </ul>
        </div>
        
     
       
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        
     
       
    </form>
       
    <p>
        <img alt="" class="style4" src="Images/img/tcsc5.jpeg" /></p>
       
    <p class="style5">
        &nbsp;</p>
       
</body>
</html>
