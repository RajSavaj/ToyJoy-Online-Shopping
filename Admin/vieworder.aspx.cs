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


public partial class Admin_vieworder : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void s1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void grd1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
