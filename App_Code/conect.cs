using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


/// <summary>
/// Summary description for conect
/// </summary>
public class conect
{
	public conect()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public String oledb_str=System.Configuration.ConfigurationManager.ConnectionStrings["con"].ToString();
}
