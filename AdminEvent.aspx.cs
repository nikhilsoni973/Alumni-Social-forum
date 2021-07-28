using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["eventsConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into events(Eventname,Eventdescription,Eventdate)values(@name,@desc,@date)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@name", TextBox1.Text);
            com.Parameters.AddWithValue("@desc", TextBox2.Text);
            com.Parameters.AddWithValue("@date", TextBox3.Text);
            com.ExecuteNonQuery();
            Response.Write("Submitted Successfully");




            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }


    }
}
