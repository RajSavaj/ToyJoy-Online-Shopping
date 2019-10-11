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

public partial class viewshowtoys : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(conn);
        con.Open();
        SqlDataAdapter da;

        if (Request.QueryString["sid"]!=null)
        {
            string cid = Request.QueryString["sid"].ToString();
            da = new SqlDataAdapter("select * from sub_Category where c_id="+cid+"", con);
        }
        else
        {
            da = new SqlDataAdapter("select * from sub_Category", con);
        }
        DataSet ds = new DataSet();
        da.Fill(ds);
        rpt.DataSource = ds;
        rpt.DataBind();

    }
}
