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

public partial class Buynow1 : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        con = new SqlConnection(conn);
        con.Open();
        SqlDataAdapter da;

        if (Request.QueryString["iid"] != null)
        {
            string sid = Request.QueryString["iid"].ToString();
            da = new SqlDataAdapter("select * from item where s_id=" + sid + "", con);
        }
        else
        {
            da = new SqlDataAdapter("select * from item", con);
        }
        DataSet ds = new DataSet();
        da.Fill(ds);
        rpt.DataSource = ds;
        rpt.DataBind();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["user"] == null)
        {
           Response.Redirect("login.aspx");
        }
        else 
        {
           // Session["i_id"] = e1.CommandArgument.ToString();
            Response.Redirect("mybucket.aspx");
        }
    


    }

    protected void rpt_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            if (e.CommandName == "Add")
            {
                string uid = Session["user"].ToString();
                string iid = e.CommandArgument.ToString();
                SqlCommand cmd = new SqlCommand("insert into Cart (i_id,u_id,quantity) values (" + iid + "," + uid + "," + 1 + ")", con);
                cmd.ExecuteNonQuery();
                ///Response.Write(e.CommandArgument);
            }
            if (e.CommandName == "Buy")
            {
                //
            }
        }
       
    }
}
