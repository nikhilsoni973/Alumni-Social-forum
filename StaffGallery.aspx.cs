using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class StaffGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["ImageConnectionString"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        SqlCommand cmd = new SqlCommand("select* from image", con);
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();


    }
}