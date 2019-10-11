using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class cart : System.Web.UI.Page
{
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"]==null)
        {
            Response.Redirect("login.aspx");
        }
        conn = new SqlConnection(qstr);
        conn.Open();
        bindData();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");


    }

    protected void btncontinue_Click(object sender, EventArgs e)
    {
        Response.Redirect("buynow.aspx");

    }

    protected void s1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void grdview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = "";
        Label lid = (Label)grdview.Rows[e.RowIndex].FindControl("l1");
        id = lid.Text;
        SqlCommand cmd = new SqlCommand("delete from Cart where crt_id=" + id + "", conn);
        cmd.ExecuteNonQuery();
        grdview.EditIndex = -1;
        bindData();
    }
    public void bindData()
    {
        SqlDataAdapter da = new SqlDataAdapter("select  c.crt_id, c.date, c.quantity, i.item_name, i.item_image, i.price from Cart c,[User] u,item i where c.i_id=i.i_id AND c.u_id=u.Id And c.status=0", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grdview.DataSource = dt;
        grdview.DataBind();
    }
}
