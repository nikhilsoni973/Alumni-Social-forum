using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class NewStaff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (IsPostBack)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StaffConnectionString"].ConnectionString);
            con.Open();
            string checkuser = "select count(*) from UserData1 where Email='" + TextBoxEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already Exist");

            }

            con.Close();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Guid newGUID = Guid.NewGuid();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StaffConnectionString"].ConnectionString);
            con.Open();
            string insert = "insert into UserData1(ID,Username,Email,Password)values(@ID,@Uname,@email,@password)";
            SqlCommand com = new SqlCommand(insert, con);
            com.Parameters.AddWithValue("@ID", newGUID.ToString());
            com.Parameters.AddWithValue("@Uname", TextBoxUN.Text);
            com.Parameters.AddWithValue("@email", TextBoxEmail.Text);
            com.Parameters.AddWithValue("@password", TextBoxPass.Text);
            com.ExecuteNonQuery();
            Response.Redirect("Stafflogin.aspx");
            Response.Write("Registration Successfull");


            con.Close();
        }
        catch (Exception ex)
        {

            Response.Write("Error:" + ex.ToString());

        }

        
    }
}