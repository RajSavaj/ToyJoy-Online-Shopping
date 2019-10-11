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

public partial class bill : System.Web.UI.Page
{
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;

    SqlCommand cmd;
    SqlDataReader rd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(qstr);
        
            conn.Open();
            cmd = new SqlCommand("select price from Cart c,item i where c.crt_id=" + Session["crtid"].ToString() + " AND c.i_id=i.i_id", conn);
            rd=cmd.ExecuteReader();
            rd.Read();
            dt.Text =DateTime.Today.ToString("dd/MM/yyyy"); 
            name.Text = Session["name"].ToString();
            price.Text = rd[0].ToString();
    }
    
}
