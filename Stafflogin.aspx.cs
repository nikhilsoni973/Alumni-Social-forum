using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class StaffLlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {




    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StaffConnectionString"].ConnectionString);
        con.Open();
        string checkuser = "select count(*) from UserData1 where Email='" + TextBoxStaffUser.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {

           

                con.Open();
                string checkpasswordQuery = "select Password from UserData1 where Email='" + TextBoxStaffUser.Text + "'";
                SqlCommand passComm = new SqlCommand(checkpasswordQuery, con);
                string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                if (password == TextBoxStaffpass.Text)
                {
                    Session["New"] = TextBoxStaffUser.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("DefaultpageofStaff.aspx");
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
