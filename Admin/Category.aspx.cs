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

public partial class Admin_Category : System.Web.UI.Page
{
    string conn = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(conn);
        con.Open();
        if (!IsPostBack)
        {
            BindGridView();
        }
    }
    protected void BindGridView()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from Category", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grdcat.DataSource = dt;
        grdcat.DataBind();

    }
    protected void btncat_Click(object sender, EventArgs e)
    {
        if (cname.Text != "" && desc.Text != "" && cimg.HasFile)
        {
            string path = "~/Admin/images/cimg/";
            path += cimg.FileName;
            cimg.SaveAs(MapPath(path));
            SqlCommand cmd = new SqlCommand("insert into Category (c_name,c_desc,c_img) values ('"+cname.Text+"','"+desc.Text+"','"+path+"')", con);
            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("Record Inserted");
            }
            catch(Exception msg)
            {
            }
        }
       
    }
    protected void grdcat_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdcat.EditIndex = -1;
        BindGridView();
    }
    protected void grdcat_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = "";
        Label lid = (Label)grdcat.Rows[e.RowIndex].FindControl("ll");
        id = lid.Text;
        SqlCommand cmd = new SqlCommand("delete from Category where c_id=" + id + "", con);
        cmd.ExecuteNonQuery();
        grdcat.EditIndex = -1;
        BindGridView();
    }
    protected void grdcat_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdcat.EditIndex = e.NewEditIndex;
        BindGridView();
    }
    protected void grdcat_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string id = "";
        Label lid = (Label)grdcat.Rows[e.RowIndex].FindControl("ll");
        id = lid.Text;
        TextBox name = (TextBox)grdcat.Rows[e.RowIndex].FindControl("txt_Name");
        TextBox desc = (TextBox)grdcat.Rows[e.RowIndex].FindControl("txt_desc");
        FileUpload FileUpload1 = (FileUpload)grdcat.Rows[e.RowIndex].FindControl("FileUpload1");
        string path = "~/Admin/images/cimg/";
        if (FileUpload1.HasFile)
        {
            path += FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
        }
        else
        {
            Image img = (Image)grdcat.Rows[e.RowIndex].FindControl("img_user");
            path = img.ImageUrl;
        }
        SqlCommand cmd = new SqlCommand("update Category set c_name='" + name.Text + "',c_desc='"+desc.Text+"',c_img='" + path + "' where c_id=" + id + "", con);
        cmd.ExecuteNonQuery();
        grdcat.EditIndex = -1;
        BindGridView();
    }
}
