using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLAdmin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["AdminConnectionString"].ConnectionString);
        con.Open();
        string checkuser = "select count(*) from AdminData where Username='" + TextBoxAdminname.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {

           

                con.Open();
                string checkpasswordQuery = "select Password from AdminData where Username='" + TextBoxAdminname.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordQuery, con);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxadminPassword.Text)
                {
                    Session["New"] = TextBoxAdminname.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Defaultpageofadmin.aspx");
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