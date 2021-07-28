using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AlumniJobPosting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["StaffJobsConnectionString"].ConnectionString);
            conn.Open();
            string insert = "insert into Jobposting(Company Name,Job title,Qualification,job Location,Package,Skills,Reference Email)values(@Company,@title,@Quali,@location,@pack,@talent,@email)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@Company", TextCompanyName.Text);
            com.Parameters.AddWithValue("@title", TextBoxjobtitle.Text);
            com.Parameters.AddWithValue("@Quali", TextBoxQualification.Text);
            com.Parameters.AddWithValue("@location", TextBoxLocation.Text);
            com.Parameters.AddWithValue("@pack", TextBoxpackage.Text);
            com.Parameters.AddWithValue("@talent", TextBoxkeyskills.Text);
            com.Parameters.AddWithValue("@email", TextBoxemail.Text);
            com.ExecuteNonQuery();
            Response.Redirect("Staffjobs.aspx");




            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:"+ex.ToString());
        }


    }

    protected void Button1_Click1(object sender, EventArgs e)
    {

        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["jobconnection"].ConnectionString);
            conn.Open();
            string insert = "insert into jobs(Company,Location,jobtitle,qualification,skills,package,experience,openings,Reference)values(@Name,@loca,@title,@quali,@ski,@pack,@exp,@open,@Ref)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@Name", TextCompanyName.Text);
            com.Parameters.AddWithValue("@loca",TextBoxLocation.Text);
            com.Parameters.AddWithValue("@title", TextBoxjobtitle.Text);
            com.Parameters.AddWithValue("@quali", TextBoxQualification.Text);
            com.Parameters.AddWithValue("@ski", TextBoxkeyskills.Text);
            com.Parameters.AddWithValue("@pack", TextBoxpackage.Text);
            com.Parameters.AddWithValue("@exp", TextBoxexperience.Text);
            com.Parameters.AddWithValue("@open", TextBoxjobopening.Text);
            com.Parameters.AddWithValue("@Ref", TextBoxemail.Text);
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