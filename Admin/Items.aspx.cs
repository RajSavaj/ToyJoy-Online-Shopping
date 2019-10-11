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
public partial class Admin_Items : System.Web.UI.Page
{
    
    String qstr = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection conn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        conn = new SqlConnection(qstr);
        conn.Open();
        if (!IsPostBack)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Category", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            cat.DataTextField = "c_name";
            cat.DataValueField = "c_id";
            cat.DataSource = dt;
            cat.DataBind();
        }
    }
    protected void cat_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(cat.SelectedItem.Text!="")
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from Sub_category where c_id="+cat.SelectedValue.ToString()+"", conn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            subcat.DataTextField = "s_name";
            subcat.DataValueField = "s_id";  
            subcat.DataSource = dt;
            subcat.DataBind();
        }
    }
    protected void btncat_Click(object sender, EventArgs e)
    {
        string path = "~/Admin/images/cimg/";
        path += iimg.FileName;
        iimg.SaveAs(MapPath(path));
        SqlCommand cmd = new SqlCommand("insert into item (s_id,item_name,item_image,description,price,qty) values ("+subcat.SelectedValue.ToString()+",'" + name.Text + "','" + path + "','" + desc.Text + "','" + price.Text + "'," + qty.Text + ")", conn);
        try
        {
            cmd.ExecuteNonQuery();
            Response.Write("Record Inserted");
        }
        catch (Exception msg)
        {
        }


    }
    
}
