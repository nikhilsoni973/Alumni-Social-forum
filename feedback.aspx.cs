using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["feedbackConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into feedback(emailaddress,message)values(@email,@mes)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@email", TextBox1.Text);
            com.Parameters.AddWithValue("@mes", TextBox2.Text);
            com.ExecuteNonQuery();
            Response.Write("Thankyou for giving us feedback");




            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }


    }
}