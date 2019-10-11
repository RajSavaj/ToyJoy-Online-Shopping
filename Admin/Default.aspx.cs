using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;
using System.Data.SqlClient;

public partial class Admin_Default : System.Web.UI.Page
{
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(qstr);
        try
        {
            conn.Open();
            cmd = new SqlCommand("select * from [dbo].[Admin] where Uname='" + Username.Text + "' And Pass='" + Pass.Text + "'", conn);
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                Session["user"] = rd[0].ToString();
                Session["name"] = rd[1].ToString() + "" + rd[2].ToString();
                Response.Redirect("Users.aspx");
            }
            else
            {
                err.Text = "Invalid Username And Password";
            }
        }
        catch (Exception msg)
        {

            Response.Write(msg.ToString());
        }

    }
}
    


    
