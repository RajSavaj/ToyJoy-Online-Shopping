using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class TypesofToys : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(conn);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Category", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        rpt.DataSource = ds;
        rpt.DataBind();
    }
}
