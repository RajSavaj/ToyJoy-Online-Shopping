using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Drawing;
using System.Data.SqlClient;


public partial class reg : System.Web.UI.Page
{
    SqlConnection con;
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        checkDob.ValueToCompare = DateTime.Now.ToString("d");
    }
    protected void rg_click(object sender, EventArgs e)
    {
        con = new SqlConnection(qstr);
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO [User](Fnam, Mname, Lname, City, Dob, mno, Email, Pass) VALUES (@name,@mname,@lname,@city,@dob,@mno,@email,@pass)", con);
        cmd.Parameters.AddWithValue("@name", Firstname.Text);
        cmd.Parameters.AddWithValue("@mname", Middlename.Text);
        cmd.Parameters.AddWithValue("@lname", Lastname.Text);
        cmd.Parameters.AddWithValue("@city", City.Text);
        cmd.Parameters.AddWithValue("@dob", DOB.Text);
        cmd.Parameters.AddWithValue("@mno", Mobileno.Text);
        cmd.Parameters.AddWithValue("@email", Email.Text);
        cmd.Parameters.AddWithValue("@pass", pass.Text);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            success.ForeColor = Color.Green;
            success.Text = "Registration Succesdully Please Login";
        }
        else
        {
            success.Text = "Accoutnt Not Create";
            success.ForeColor = Color.Red;
        }

    }
   
}
