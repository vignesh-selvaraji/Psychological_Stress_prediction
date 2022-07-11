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

public partial class Location : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Request.QueryString["email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("update Signup set Country = '"+DropDownList1.Text+"',Phone = '"+TextBox1.Text+"' where Email = '"+Label2.Text+"'",con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("ProfilePic.aspx?email="+Label2.Text);
    }
}
