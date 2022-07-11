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
using System.IO;
using System.Data.SqlClient;

public partial class ProfilePic : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = Request.QueryString["email"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("~/images/profile/")+FileUpload1.FileName);
        string fpath = Server.MapPath("~/images/profile/") + FileUpload1.FileName;
        string fname = FileUpload1.FileName;

        FileStream fs = new FileStream(fpath, FileMode.Open, FileAccess.ReadWrite);
        byte[] buffer = new byte[fs.Length];
        fs.Read(buffer,0,(int)fs.Length);
        fs.Flush();
        fs.Close();

        con.Open();
        SqlCommand cmd = new SqlCommand("update Signup set Imgname = '" + fname + "',ProfilePic=@ProfilePic where Email = '" + Label2.Text + "'", con);
        cmd.Parameters.AddWithValue("@ProfilePic",buffer);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["email"] = Label2.Text;
        Response.Redirect("Publictweets.aspx");
    }
}
