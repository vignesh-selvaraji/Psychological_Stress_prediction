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
using ZedGraph;
using System.Drawing;

public partial class Overalltweetstate : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
    double stressperc, normalperc;
    string overallstate;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmm = new SqlCommand("select count(*) from tweet", con);
        SqlCommand cmm1 = new SqlCommand("select count(*) from tweet where StressState = 'Stressed'", con);
        int alltweet = Convert.ToInt32(cmm.ExecuteScalar());
        int strss = Convert.ToInt32(cmm1.ExecuteScalar());
        int normal = alltweet - strss;

        double perc = 100 / Convert.ToDouble(alltweet);
        stressperc = Convert.ToDouble(strss) * perc;
        normalperc = Convert.ToDouble(normal) * perc;
        con.Close();

        if (normalperc > stressperc)
        {
            Label7.Text = "Normal Tweets";
        }
        else if (stressperc > normalperc)
        {
            Label7.Text = "Stressed Tweets";
        }
        else if (normalperc == stressperc)
        {
            Label7.Text = "Equal State";
        }
        Label8.Text = stressperc.ToString() + "% Stressed Tweets";
        Label9.Text = normalperc.ToString() + "% Normal Tweets";
    }

    #region Web Form Designer generated code
    override protected void OnInit(EventArgs e)
    {
        //
        // CODEGEN: This call is required by the ASP.NET Web Form Designer.
        //
        InitializeComponent();
        base.OnInit(e);
    }

    /// <summary>
    /// Required method for Designer support - do not modify
    /// the contents of this method with the code editor.
    /// </summary>
    private void InitializeComponent()
    {
        this.ZedGraphWeb2.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler(this.OnRenderGraph1);
        //this.ZedGraphWeb2.RenderGraph += new ZedGraph.Web.ZedGraphWebControlEventHandler( this.OnRenderGraph2 );
    }
    #endregion

    private void OnRenderGraph1(ZedGraph.Web.ZedGraphWeb z, System.Drawing.Graphics g, ZedGraph.MasterPane masterPane)
    {
        // Get the GraphPane so we can work with it
        GraphPane myPane = masterPane[0];

        switch ("Pie")
        {

            case "Pie":
                // Fill the pane background with a color gradient
                myPane.Fill = new Fill(Color.White, Color.White, 45.0f);
                // No fill for the chart background
                myPane.Chart.Fill.Type = FillType.None;
                // Set the legend to an arbitrary location
                myPane.Legend.Position = LegendPos.Float;
                myPane.Legend.FontSpec.Size = 12f;
                // IsHStack is use the create the legend items horizontally
                myPane.Legend.IsHStack = false;

                // Add some pie slices
                PieItem segment1 = myPane.AddPieSlice(stressperc, Color.Red, Color.Tomato, 45f, 0, "Stressed Tweets");
                PieItem segment2 = myPane.AddPieSlice(normalperc, Color.Green, Color.LightGreen, 45f, 0, "Non Stressed Tweets");
                masterPane.AxisChange(g);
                // There is no need for pie chart to adjust X and Y axis. So the rest of the code is irrelavent with regard to Pie Chart
                return;


        }

        // Fill the axis background with a color gradient
        myPane.Chart.Fill = new Fill(Color.White, Color.FromArgb(255, 255, 166), 45.0F);

        masterPane.AxisChange(g);
    }

}
