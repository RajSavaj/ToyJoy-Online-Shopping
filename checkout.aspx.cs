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

public partial class checkout : System.Web.UI.Page
{
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    SqlCommand cmd;
    String Cartid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(qstr);
        conn.Open();
        if (Request.QueryString["cid"] == null)
        {
            Response.Redirect("cart.aspx");
        }
        else {
             Cartid = Request.QueryString["cid"].ToString();
             if (Cartid == "")
            {
                Response.Redirect("cart.aspx");
            }
        }
        if (Session["user"]==null)
        {
            Response.Redirect("login.aspx");
        }
        txtunm.Text = Session["name"].ToString();
        txtcity.Text = Session["city"].ToString();
        txtemail.Text = Session["email"].ToString();

    }
    protected void btnbill_Click(object sender, EventArgs e)
    {
        string pay = "Other";
        if(RadioButton1.Checked)
        {
            pay = "Cash";
        }
        cmd = new SqlCommand("insert into Checkout(uname,address,city,email,mobileno,paymethod,uid,crtid) values('" + txtunm.Text + "','" + txtadd.Text + "','" + txtcity.Text + "','" + txtemail.Text + "'," + txtmobile.Text + ",'" + pay + "'," + Session["user"].ToString() + "," + Cartid + ")", conn);
        cmd.ExecuteNonQuery();
        cmd = new SqlCommand("update Cart set status=1 where crt_id=" + Cartid + "", conn);
        cmd.ExecuteNonQuery();
        Session["crtid"] = Cartid;
        Response.Redirect("bill.aspx");
    }
}
