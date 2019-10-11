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
using System.Data.SqlClient;

public partial class feedback : System.Web.UI.Page
{
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {



    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        conn = new SqlConnection(qstr);
        conn.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO feedback (name,mobile,message) VALUES (@name,@mobile,@message)", conn);
        cmd.Parameters.AddWithValue("@name", txtname.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@message", txtmessage.Text);
        cmd.ExecuteNonQuery();
        String a = "Feed Back successfully send...";
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + a + "')", true);

        //Label1.Text = "Feedback send successfully";



    }
}