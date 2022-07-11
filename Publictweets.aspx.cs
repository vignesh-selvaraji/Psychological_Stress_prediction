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

public partial class Publictweets : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    string prflimg, stressstate, badwrd;
    bool whival = false;  
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
            SqlCommand cmd3 = new SqlCommand("Select Count(*) from Followers where Follower = '" + Label1.Text + "'", con);
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
            Image2.ImageUrl = "~//images//profile//" + Label19.Text;

            con.Open();
            SqlCommand cmd5 = new SqlCommand("Select * from tweet order by ID desc", con);
            DataList1.DataSource = cmd5.ExecuteReader();
            DataList1.DataBind();
            con.Close();
        }
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        whival = false;
        string profilepath = Server.MapPath("~/images/profile/") + Label19.Text;

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
            SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Photoname,Photo,Profile,Profileimg,StressState,Likes,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Photoname,@Photo,@Profile,@Profileimg,@StressState,@Likes,@Replycnt,@Retweetcnt)", con);
            cmd.Parameters.AddWithValue("@Name", Label1.Text);
            cmd.Parameters.AddWithValue("@Email", Label8.Text);
            cmd.Parameters.AddWithValue("@Message", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Photoname", FileUpload1.FileName);
            cmd.Parameters.AddWithValue("@Photo", buffer);
            cmd.Parameters.AddWithValue("@Profile", buffer1);
            cmd.Parameters.AddWithValue("@Profileimg", Label19.Text);
            cmd.Parameters.AddWithValue("@StressState", stressstate);
            cmd.Parameters.AddWithValue("@Likes", "0");
            cmd.Parameters.AddWithValue("@Replycnt", "0");
            cmd.Parameters.AddWithValue("@Retweetcnt", "0");
            cmd.ExecuteNonQuery();
            con.Close();
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Profile,Profileimg,StressState,Likes,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Profile,@Profileimg,@StressState,@Likes,@Replycnt,@Retweetcnt)", con);
            cmd.Parameters.AddWithValue("@Name", Label1.Text);
            cmd.Parameters.AddWithValue("@Email", Label8.Text);
            cmd.Parameters.AddWithValue("@Message", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Profile", buffer1);
            cmd.Parameters.AddWithValue("@Profileimg", Label19.Text);
            cmd.Parameters.AddWithValue("@StressState", stressstate);
            cmd.Parameters.AddWithValue("@Likes", "0");
            cmd.Parameters.AddWithValue("@Replycnt", "0");
            cmd.Parameters.AddWithValue("@Retweetcnt", "0");
            cmd.ExecuteNonQuery();
            con.Close();
        }
        Response.Redirect("Publictweets.aspx");
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        string pid = ((Label)e.Item.FindControl("PhotonameLabel")).Text;
        if (pid == "" || pid == "Null" || pid == null)
        {
            e.Item.FindControl("Image4").Visible = false;
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "Reply")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string id = ((Label)DataList1.SelectedItem.FindControl("IDLabel")).Text;
            string name = ((Label)DataList1.SelectedItem.FindControl("NameLabel")).Text;
            string email = ((Label)DataList1.SelectedItem.FindControl("EmailLabel")).Text;
            string msg = ((Label)DataList1.SelectedItem.FindControl("MessageLabel")).Text;
            string photoname = ((Label)DataList1.SelectedItem.FindControl("PhotonameLabel")).Text;
            string profilename = ((Label)DataList1.SelectedItem.FindControl("ProfileimgLabel")).Text;
            string replycnt = ((Label)DataList1.SelectedItem.FindControl("Label11")).Text;
            string retwcnt = ((Label)DataList1.SelectedItem.FindControl("Label10")).Text;
            string replymsg = ((TextBox)DataList1.SelectedItem.FindControl("TextBox2")).Text;
           

            whival = false;
            string profilepath = Server.MapPath("~/images/profile/") + profilename;

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
           

            if (photoname != "")
            {
                string fullpath = Server.MapPath("~/images/share/") + photoname;

                FileStream fs = new FileStream(fullpath, FileMode.Open, FileAccess.ReadWrite);
                byte[] buffer = new byte[fs.Length];
                fs.Read(buffer, 0, (int)fs.Length);
                fs.Close();

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Photoname,Photo,Profile,Profileimg,StressState,Likes,Replymsg,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Photoname,@Photo,@Profile,@Profileimg,@StressState,@Likes,@Replymsg,@Replycnt,@Retweetcnt)", con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Message", msg);
                cmd.Parameters.AddWithValue("@Photoname", photoname);
                cmd.Parameters.AddWithValue("@Photo", buffer);
                cmd.Parameters.AddWithValue("@Profile", buffer1);
                cmd.Parameters.AddWithValue("@Profileimg", profilename);
                cmd.Parameters.AddWithValue("@StressState", stressstate);
                cmd.Parameters.AddWithValue("@Likes", "0");
                cmd.Parameters.AddWithValue("@Replymsg", Label1.Text + " replied : " + replymsg);
                cmd.Parameters.AddWithValue("@Replycnt", "0");
                cmd.Parameters.AddWithValue("@Retweetcnt", "0");
                cmd.ExecuteNonQuery();
                int repcnt = Convert.ToInt32(replycnt);
                repcnt++;
                SqlCommand cmm2 = new SqlCommand("update tweet set Replycnt = '" + repcnt + "' where ID = '" + id + "'", con);
                cmm2.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Profile,Profileimg,StressState,Likes,Replymsg,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Profile,@Profileimg,@StressState,@Likes,@Replymsg,@Replycnt,@Retweetcnt)", con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Message", msg);               
                cmd.Parameters.AddWithValue("@Profile", buffer1);
                cmd.Parameters.AddWithValue("@Profileimg", profilename);
                cmd.Parameters.AddWithValue("@StressState", stressstate);
                cmd.Parameters.AddWithValue("@Likes", "0");
                cmd.Parameters.AddWithValue("@Replymsg", Label1.Text + " replied : " + replymsg);
                cmd.Parameters.AddWithValue("@Replycnt", "0");
                cmd.Parameters.AddWithValue("@Retweetcnt", "0");
                cmd.ExecuteNonQuery();
                int repcnt = Convert.ToInt32(replycnt);
                repcnt++;
                SqlCommand cmm2 = new SqlCommand("update tweet set Replycnt = '" + repcnt + "' where ID = '" + id + "'", con);
                cmm2.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("Publictweets.aspx");
        }
        else if (e.CommandName == "Retweet")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string id = ((Label)DataList1.SelectedItem.FindControl("IDLabel")).Text;
            string name = ((Label)DataList1.SelectedItem.FindControl("NameLabel")).Text;
            string email = ((Label)DataList1.SelectedItem.FindControl("EmailLabel")).Text;
            string msg = ((Label)DataList1.SelectedItem.FindControl("MessageLabel")).Text;
            string photoname = ((Label)DataList1.SelectedItem.FindControl("PhotonameLabel")).Text;
            string profilename = ((Label)DataList1.SelectedItem.FindControl("ProfileimgLabel")).Text;
            string replycnt = ((Label)DataList1.SelectedItem.FindControl("Label11")).Text;
            string retwcnt = ((Label)DataList1.SelectedItem.FindControl("Label10")).Text;
            string retweetmsg = ((TextBox)DataList1.SelectedItem.FindControl("TextBox3")).Text;


            whival = false;
            string profilepath = Server.MapPath("~/images/profile/") + profilename;

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


            if (photoname != "")
            {
                string fullpath = Server.MapPath("~/images/share/") + photoname;

                FileStream fs = new FileStream(fullpath, FileMode.Open, FileAccess.ReadWrite);
                byte[] buffer = new byte[fs.Length];
                fs.Read(buffer, 0, (int)fs.Length);
                fs.Close();

                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Photoname,Photo,Profile,Profileimg,StressState,Likes,Retweetmsg,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Photoname,@Photo,@Profile,@Profileimg,@StressState,@Likes,@Retweetmsg,@Replycnt,@Retweetcnt)", con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Message", msg);
                cmd.Parameters.AddWithValue("@Photoname", photoname);
                cmd.Parameters.AddWithValue("@Photo", buffer);
                cmd.Parameters.AddWithValue("@Profile", buffer1);
                cmd.Parameters.AddWithValue("@Profileimg", profilename);
                cmd.Parameters.AddWithValue("@StressState", stressstate);
                cmd.Parameters.AddWithValue("@Likes", "0");
                cmd.Parameters.AddWithValue("@Retweetmsg", Label1.Text + " Retweeted : " + retweetmsg);
                cmd.Parameters.AddWithValue("@Replycnt", "0");
                cmd.Parameters.AddWithValue("@Retweetcnt", "0");
                cmd.ExecuteNonQuery();
                int retweetcnt = Convert.ToInt32(retwcnt);
                retweetcnt++;
                SqlCommand cmm2 = new SqlCommand("update tweet set Retweetcnt = '" + retweetcnt + "' where ID = '" + id + "'", con);
                cmm2.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into tweet(Name,Email,Message,Profile,Profileimg,StressState,Likes,Retweetmsg,Replycnt,Retweetcnt)values(@Name,@Email,@Message,@Profile,@Profileimg,@StressState,@Likes,@Retweetmsg,@Replycnt,@Retweetcnt)", con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@Message", msg);
                cmd.Parameters.AddWithValue("@Profile", buffer1);
                cmd.Parameters.AddWithValue("@Profileimg", profilename);
                cmd.Parameters.AddWithValue("@StressState", stressstate);
                cmd.Parameters.AddWithValue("@Likes", "0");
                cmd.Parameters.AddWithValue("@Retweetmsg", Label1.Text + " Retweeted : " + retweetmsg);
                cmd.Parameters.AddWithValue("@Replycnt", "0");
                cmd.Parameters.AddWithValue("@Retweetcnt", "0");
                cmd.ExecuteNonQuery();
                int retweetcnt = Convert.ToInt32(retwcnt);
                retweetcnt++;
                SqlCommand cmm2 = new SqlCommand("update tweet set Retweetcnt = '" + retweetcnt + "' where ID = '" + id + "'", con);
                cmm2.ExecuteNonQuery();
                con.Close();
            }
            Response.Redirect("Publictweets.aspx");
        }
        else if (e.CommandName == "click")
        {
            DataList1.SelectedIndex = e.Item.ItemIndex;
            string id = ((Label)DataList1.SelectedItem.FindControl("IDLabel")).Text;
            string likecnt = ((Label)DataList1.SelectedItem.FindControl("LikesLabel")).Text;
            int likes = Convert.ToInt32(likecnt);
            likes++;
            con.Open();
            SqlCommand cmm2 = new SqlCommand("update tweet set Likes = '" + likes + "' where ID = '" + id + "'", con);
            cmm2.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Publictweets.aspx");
        }
    }

    protected void ImageButton7_Command(object sender, CommandEventArgs e)
    {

    }
}
