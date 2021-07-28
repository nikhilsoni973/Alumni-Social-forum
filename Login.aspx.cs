using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AlumniConnectionString"].ConnectionString);
        con.Open();
        string checkuser = "select count(*) from UserData where Email='" + TextBoxLoginUserId.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();

        if (temp == 1)
        {

            con.Open();
            string checkpasswordQuery = "select Password from UserData where Email='" + TextBoxLoginUserId.Text + "'";
            SqlCommand passComm = new SqlCommand(checkpasswordQuery, con);
            string password = passComm.ExecuteScalar().ToString().Replace(" ","");
            if (password == TextBoxLoginPass.Text)
            {
                Session["New"] = TextBoxLoginUserId.Text;
                Response.Write("Password is correct");
                Response.Redirect("DefaultpageofAlumni.aspx");
            }
            else
            {
                Response.Write("Password is incorrect");
            }





        }
        else
        {
            Response.Write("Username is incorrect");
        }


     

    }
}