using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

public partial class AdminGallery : System.Web.UI.Page
{
    SqlCommand cmd=new SqlCommand();
    SqlConnection con=new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {




    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a;
        a = ConfigurationManager.ConnectionStrings["ImageConnectionString"].ToString();
        SqlConnection con = new SqlConnection(a);
        con.Open();
        if (!FileUpload1.HasFile)
        {

            Label1.Text = "Please Insert Image";

        }
        else
        {

            int length = FileUpload1.PostedFile.ContentLength;
            byte[] pic = new byte[length];
            FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
            SqlCommand cmd = new SqlCommand("insert into image" + "(image)values(@image)", con);
            cmd.Parameters.AddWithValue("image", pic);
            cmd.ExecuteNonQuery();
            Label1.Text = "uploaded";




        }


    }
}