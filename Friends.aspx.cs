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

public partial class Friends : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label8.Text = Session["email"].ToString();

            con.Open();
            SqlCommand cmd0 = new SqlCommand("select Name from Signup where Email = '" + Label8.Text + "'", con);
            SqlCommand cmd1 = new SqlCommand("select Imgname from Signup where Email = '" + Label8.Text + "'", con);
            SqlCommand cmd2 = new SqlCommand("select Count(*) from tweet where Email = '" + Label8.Text + "'", con);
            Label1.Text = (string)cmd0.ExecuteScalar();
            Label5.Text = Convert.ToString(cmd2.ExecuteScalar());
            Label19.Text = Convert.ToString(cmd1.ExecuteScalar());
            SqlCommand cmd3 = new SqlCommand("Select Count(*) from Followers where Follower = '"+Label1.Text+"'",con);
            SqlCommand cmd4 = new SqlCommand("Select Count(*) from Followers where Username = '" + Label1.Text + "'", con);
            try
            {
                Label6.Text = Convert.ToString(cmd3.ExecuteScalar());
                Label7.Text = Convert.ToString(cmd4.ExecuteScalar());
            }
            catch
            {
                Label6.Text = "0";
                Label7.Text = "0";
            }
            con.Close();

            Image1.ImageUrl = "~//images//profile//" + Label19.Text;           
        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "follow")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string id = ((Label)DataList1.SelectedItem.FindControl("IDLabel")).Text;
            string imgname = ((Label)DataList1.SelectedItem.FindControl("Label21")).Text;
            string name = ((Label)DataList1.SelectedItem.FindControl("NameLabel")).Text;            

            string fullpath = Server.MapPath("~/images/profile/") + imgname;

            FileStream fs = new FileStream(fullpath, FileMode.Open, FileAccess.ReadWrite);
            byte[] buffer = new byte[fs.Length];
            fs.Read(buffer, 0, (int)fs.Length);
            fs.Close();

            string profilepath = Server.MapPath("~/images/profile/") + Label19.Text;
            FileStream fs1 = new FileStream(profilepath, FileMode.Open, FileAccess.ReadWrite);
            byte[] buffer1 = new byte[fs1.Length];
            fs1.Read(buffer1, 0, (int)fs1.Length);
            fs1.Close();

            con.Open();
            SqlCommand cmm = new SqlCommand("Select Username from Followers where Username = '"+name+"'",con);
            string uname = Convert.ToString(cmm.ExecuteScalar());
            con.Close();

            if(uname == "")
            {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Followers(Username,UserProfile,Follower,FollowerProfile)values(@Username,@UserProfile,@Follower,@FollowerProfile)", con);
            cmd.Parameters.AddWithValue("@Username", name);
            cmd.Parameters.AddWithValue("@UserProfile", buffer);
            cmd.Parameters.AddWithValue("@Follower", Label1.Text);
            cmd.Parameters.AddWithValue("@FollowerProfile", buffer1);            
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Followed " + name + "');window.location='Friends.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('You Already followed "+name+"')</script>");
            }

        }
    }
}
