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

public partial class Userhome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    string prflimg,stressstate,badwrd;
    bool whival = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label8.Text = Session["email"].ToString();

        con.Open();
        SqlCommand cmd0 = new SqlCommand("select Name from Signup where Email = '" + Label8.Text + "'", con);
        SqlCommand cmd1 = new SqlCommand("select Imgname from Signup where Email = '" + Label8.Text + "'", con);
        SqlCommand cmd2 = new SqlCommand("select Count(*) from tweet where Email = '" + Label8.Text + "'", con);
        Label1.Text = (string)cmd0.ExecuteScalar();
        Label5.Text = Convert.ToString(cmd2.ExecuteScalar());
        prflimg = Convert.ToString(cmd1.ExecuteScalar());
        con.Close();

        Image1.ImageUrl = "~//images//profile//" + prflimg;
        Image2.ImageUrl = "~//images//profile//" + prflimg;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        whival = false;
        string profilepath = Server.MapPath("~/images/profile/") + prflimg;

        FileStream fs1 = new FileStream(profilepath, FileMode.Open, FileAccess.ReadWrite);
        byte[] buffer1 = new byte[fs1.Length];
        fs1.Read(buffer1, 0, (int)fs1.Length);
        fs1.Close();

        con.Open();
        SqlCommand cmm = new SqlCommand("select words from stress_tbl", con);
        SqlDataReader dr = cmm.ExecuteReader();

        while (dr.Read())
        {
            badwrd = dr.GetString(0).ToString();
            string texttype = TextBox1.Text;

            if (texttype.IndexOf(badwrd) >= 0)
            {
                whival = true;
            }
        }
        con.Close();

        if (whival == true)
        {
            stressstate = "Stressed";
        }
        else if (whival == false)
        {
            stressstate = "Normal";
        }

        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/images/share/") + FileUpload1.FileName);
            string fullpath = Server.MapPath("~/images/share/") + FileUpload1.FileName;           
            
            FileStream fs = new FileStream(fullpath, FileMode.Open, FileAccess.ReadWrite);
            byte[] buffer = new byte[fs.Length];
            fs.Read(buffer, 0, (int)fs.Length);
            fs.Close();          
            
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Photoname,Photo,Profile,Profileimg,StressState,Likes)values(@Name,@Email,@Message,@Photoname,@Photo,@Profile,@Profileimg,@StressState,@Likes)", con);
            cmd.Parameters.AddWithValue("@Name", Label1.Text);
            cmd.Parameters.AddWithValue("@Email", Label8.Text);
            cmd.Parameters.AddWithValue("@Message", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Photoname", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@Photo", buffer);
            cmd.Parameters.AddWithValue("@Profile", buffer1);
            cmd.Parameters.AddWithValue("@Profileimg", prflimg);
            cmd.Parameters.AddWithValue("@StressState",stressstate);
            cmd.Parameters.AddWithValue("@Likes","0");
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Profile,Profileimg,StressState,Likes)values(@Name,@Email,@Message,@Profile,@Profileimg,@StressState,@Likes)", con);
            cmd.Parameters.AddWithValue("@Name", Label1.Text);
            cmd.Parameters.AddWithValue("@Email", Label8.Text);
            cmd.Parameters.AddWithValue("@Message", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Profile", buffer1);
            cmd.Parameters.AddWithValue("@Profileimg", prflimg);
            cmd.Parameters.AddWithValue("@StressState", stressstate);
            cmd.Parameters.AddWithValue("@Likes", "0");
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect("Userhome.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Label10.Text = Label10.Text;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {

    }
}
