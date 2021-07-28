using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewAlumni : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AlumniConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from UserData where Email='" + TextBoxEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already Exist");

            }

            con.Close();


        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AlumniConnectionString"].ConnectionString);
            con.Open();
            string insertQuery = "insert into UserData (ID,UserName,Email,Password,Country)values(@ID,@Uname,@email,@password,@country)";
            SqlCommand com = new SqlCommand(insertQuery, con);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.Parameters.AddWithValue("@country", Country.Text);
            com.ExecuteNonQuery();
           
            Response.Write("Registration is successfully");
            Response.Redirect("Login.aspx");


            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error :" + ex.ToString());
        }
    }
}
