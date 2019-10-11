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

public partial class Admin_Sub_Category : System.Web.UI.Page
{
    SqlConnection con;
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
            catid.DataTextField = "c_name";
            catid.DataValueField = "c_id";
            catid.DataSource = dt;
            catid.DataBind();
            drpselect.DataTextField = "c_name";
            drpselect.DataValueField = "c_id";
            drpselect.DataSource = dt;
            drpselect.DataBind();
            //subsource.SelectCommand = "SELECT sc.s_id,c_name,s_name  FROM  Category c,Sub_category sc where c.c_id=sc.c_id";
        }
    }
    protected void btnsubcat_Click(object sender, EventArgs e)
    {
        if(catid.SelectedItem.Text !="" && sname.Text!="" && flusub.HasFile)
        {

            string path = "~/Admin/images/scimg/";
            path += flusub.FileName;
            flusub.SaveAs(MapPath(path));
            SqlCommand cmd = new SqlCommand("insert into Sub_category (c_id,s_name,s_img) values (" + catid.SelectedItem.Value + ",'" + sname.Text + "','" + path + "')", conn);
            try
            {
                cmd.ExecuteNonQuery();
                Response.Write("Sub Categery Addedd");
            }
            catch (Exception msg)
            {
                Response.Write(msg.ToString());
            }
           
        }
    }

    protected void drpselect_SelectedIndexChanged(object sender, EventArgs e)
    {
        BindGridView();
    }
    protected void BindGridView()
    {
        SqlDataAdapter da = new SqlDataAdapter("SELECT sc.s_id,c.c_name,sc.s_name,sc.s_img  FROM  Category c,Sub_category sc where c.c_id=sc.c_id AND sc.c_id=" + drpselect.SelectedValue.ToString() +"", conn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        grdsubcat.DataSource = dt;
        grdsubcat.DataBind();
    }
    protected void grdsubcat_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdsubcat.EditIndex = e.NewEditIndex;
        BindGridView();
    }
    protected void grdsubcat_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = "";
        Label lid = (Label)grdsubcat.Rows[e.RowIndex].FindControl("ll");
        id = lid.Text;
        SqlCommand cmd = new SqlCommand("delete from Sub_category where s_id=" + id + "", conn);
        cmd.ExecuteNonQuery();
        grdsubcat.EditIndex = -1;
        BindGridView();
    }
    protected void grdsubcat_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdsubcat.EditIndex = -1;
        BindGridView();
    }
    protected void grdsubcat_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string id = "";
        Label lid = (Label)grdsubcat.Rows[e.RowIndex].FindControl("ll");
        id = lid.Text;
        TextBox name = (TextBox)grdsubcat.Rows[e.RowIndex].FindControl("txt_scname");
        FileUpload FileUpload1 = (FileUpload)grdsubcat.Rows[e.RowIndex].FindControl("FileUpload1");
        string path = "~/Admin/images/scimg/";
        if (FileUpload1.HasFile)
        {
            path += FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(path));
        }
        else
        {
            Image img = (Image)grdsubcat.Rows[e.RowIndex].FindControl("img_user");
            path = img.ImageUrl;
        }
        SqlCommand cmd = new SqlCommand("update Sub_category set s_name='" + name.Text + "',s_img='" + path + "' where s_id=" + id + "", conn);
        cmd.ExecuteNonQuery();
        grdsubcat.EditIndex = -1;
        BindGridView();
    }
}
