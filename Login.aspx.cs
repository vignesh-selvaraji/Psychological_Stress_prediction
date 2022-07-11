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
using System.IO;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    string phone,email,pwd;    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select Email,Phone,Password from Signup where Email = '" + TextBox1.Text + "' OR Phone = '"+TextBox1.Text+"' AND Password = '" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            email = dr.GetString(0).ToString();
            phone = dr.GetString(1).ToString();
            pwd = dr.GetString(2).ToString();
        }
        dr.Close();        
        con.Close();

        if (TextBox1.Text == email || TextBox1.Text == phone && TextBox2.Text == pwd)
        {
            Session["email"] = TextBox1.Text;
            Response.Redirect("Publictweets.aspx");
        }        
    }
    
}
