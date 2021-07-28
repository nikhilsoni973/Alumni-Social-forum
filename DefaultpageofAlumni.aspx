<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultpageofAlumni.aspx.cs" Inherits="DefaultpageofAlumni" %>

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

        .style1
        {
            width: 1571px;
            height: 567px;
        }
        .style2
        {
            text-align: center;
        }
    </style>
</head>
<body>
      <form id="form1" runat="server">
    <div id="menu">
        <ul>
        <li><a href="DefaultpageofAlumni.aspx">Home</a></li>
         <li><a href="AlumniEvents.aspx">Events</a></li>
          <li><a href="AlumniGalleryaspx.aspx">Gallery</a></li>
           <li><a href="AlumniJobPosting.aspx">Job Posting</a></li>
            <li><a href="viewJobAlumni.aspx">jobs</a></li>
           
            <asp:Button ID="Button1" runat="server" BackColor="Red" ForeColor="White" 
                Height="35px" onclick="Button1_Click" Text="Logout" Width="91px" />
           
            </ul>
            </div>
            </form>
      <p>
          <img alt="" class="style1" src="Images/img/tcsc3.jpeg" /></p>
          <h1 class="style2">Welcome to Pride of TCSC</h1>
</body>
</html>
