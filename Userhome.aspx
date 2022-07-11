<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Userhome.aspx.cs" Inherits="Userhome" Title="Untitled Page" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
   

    <table style="width: 100%; height: 818px">
        <tr>
            <td style="width: 279px; height: 108px">
    <asp:Panel ID="Panel1" runat="server" Height="200px" Width="270px" 
    BackColor="White" BorderStyle="Solid" BorderWidth="1px">
    <table style="width: 100%">
        <tr>
            <td style="height: 107px; width: 117px">
                &nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="imground" Height="90px" 
                    ImageUrl="~/images/Twitter_bird_logo.png" Width="93px" />
            </td>
            <td style="height: 107px">
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
        <table style="width: 100%">
            <tr>
                <td style="width: 95px">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" Text="Tweets"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" Text="Following"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" Text="Followers"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 95px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="#0066FF">.</asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
                </td>
                <td>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Calibri" 
                        Font-Size="Medium" ForeColor="#0066FF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 95px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
</asp:Panel>
                <asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                <br />
                <br />               
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td style="width: 32px; height: 108px">
            </td>
            <td rowspan="3">
                <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                    BorderWidth="1px" Height="887px" Width="587px" ScrollBars="Auto">
                    <asp:Panel ID="Panel3" runat="server" style="display:none" BackColor="#C6ECFF" BorderStyle="Solid" 
                        BorderWidth="1px" Height="286px" Width="477px">
                        <asp:Panel ID="Panel4" runat="server" BackColor="White" Height="43px">
                            <table style="width: 100%; height: 41px;">
                                <tr>
                                    <td style="width: 210px">
                                        &nbsp;</td>
                                    <td style="width: 381px">
                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="Black" Text="Compose new Tweet"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="17px" 
                                            ImageUrl="~/images/Grey_close_x.svg.png" Width="21px" />
                                        &nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Height="84px" 
                                        TextMode="MultiLine" Width="407px" placeholder="What's happening?" required></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                            
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" 
                                        Width="406px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Font-Size="Medium" 
                                        Height="42px" Text="Tweet" onclick="Button1_Click" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    
                    
                    
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 201px">
                                &nbsp;</td>
                            <td style="width: 56px">
                                <asp:Image ID="Image2" runat="server" CssClass="imground" Height="32px" 
                                    Width="38px" />
                            </td>
                            <td style="width: 276px">
                                <asp:Button ID="Button2" runat="server" CssClass="myButton" Font-Size="Medium" 
                                    Height="36px" Text="Tweet" />
                                <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
                                    BackgroundCssClass="modalBackground" CancelControlID="ImageButton1" 
                                    PopupControlID="Panel3" TargetControlID="Button2">
                                </asp:ModalPopupExtender>
                                
                                <asp:ModalPopupExtender ID="ModalPopupExtender2" runat="server" 
                                    BackgroundCssClass="modalBackground" CancelControlID="ImageButton8" 
                                    PopupControlID="Panel5" TargetControlID="ImageButton2">
                                </asp:ModalPopupExtender>
                                
                                 <asp:ModalPopupExtender ID="ModalPopupExtender3" runat="server" 
                                    BackgroundCssClass="modalBackground" CancelControlID="ImageButton9" 
                                    PopupControlID="Panel7" TargetControlID="ImageButton5">
                                </asp:ModalPopupExtender>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 201px">
                                &nbsp;</td>
                            <td style="width: 56px">
                                &nbsp;</td>
                            <td style="width: 276px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                     <%
                         
                      SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["StressCon"].ConnectionString);
                       con.Open();
                      SqlCommand cmd = new SqlCommand("select * from tweet order by ID desc",con);                         
                      SqlDataReader dr = cmd.ExecuteReader();

                      while (dr.Read())
                      {
                          string name = dr.GetString(1).ToString();
                          string email = dr.GetString(2).ToString();
                          string msg = dr.GetString(3).ToString();
                          string profilename =  "images/profile/" + dr.GetString(7).ToString();
                          try
                          {                             
                              
                              string photoname = "images/share/" + dr.GetString(4).ToString();
                              Label10.Text = name;
                              Label11.Text = email;
                              Label12.Text = msg;
                              Label13.Text = dr.GetString(7).ToString();
                              Label14.Text = dr.GetString(4).ToString();
                              Label23.Text = name;
                         %>
                    <div style="margin-left:50px; height:380px;border-bottom:1px solid #E5ECF1;margin-bottom:20px">
                    <asp:Panel ID="Panel5" runat="server" style="display:none" BackColor="#C6ECFF" BorderStyle="Solid" 
                        BorderWidth="1px" Height="270px" Width="477px">
                        <asp:Panel ID="Panel6" runat="server" BackColor="White" Height="43px">
                            <table style="width: 100%; height: 41px;">
                                <tr>
                                    <td style="width: 210px">
                                        &nbsp;</td>
                                    <td style="width: 381px">
                                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="Black" Text="Replying to "></asp:Label>
                                        &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="Black"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton8" runat="server" Height="17px" 
                                            ImageUrl="~/images/Grey_close_x.svg.png" Width="21px" />
                                        &nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Label ID="Label12" runat="server" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Label ID="Label21" runat="server" Text="Replying to  "></asp:Label>
                                    <asp:Label ID="Label23" runat="server" ForeColor="#0066FF"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="84px" 
                                        TextMode="MultiLine" Width="407px" placeholder="Tweet Your Reply" required></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Button ID="Button3" runat="server" CssClass="myButton" Font-Size="Medium" 
                                        Height="42px" Text="Reply" onclick="Button1_Click" />
                                    <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="Label13" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="Label14" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <img class="imground" style="width:50px;height:50px" alt="" src="<%=profilename %>" />&nbsp;&nbsp;&nbsp; <label style="font-family:Calibri;font-weight:bold;color:Black"><%=name %></label>
                            <br />
                            <p style="font-family:Calibri;color:Black"><%=msg %></p>
                            <img style="width:500px;height:250px" alt="" src="<%=photoname %>" />
                            <br />
                            <br />
                        <asp:ImageButton ID="ImageButton2" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/replygrey.png" onmouseover="this.src='images/replyblue.png';" onmouseout="this.src='images/replygrey.png';" Width="20px" 
                            onclick="ImageButton2_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton3" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/retweetgrey.png" 
                            onmouseover="this.src='images/retweetgreen.png';" 
                            onmouseout="this.src='images/retweetgrey.png';" Width="20px" 
                            onclick="ImageButton3_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton4" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/likegrey.png" 
                            onmouseover="this.src='images/likered.png';" 
                            onmouseout="this.src='images/likegrey.png';" Width="20px" 
                            onclick="ImageButton4_Click" />
                        
                    </div>
                    <%                       
                          }
                          catch (Exception e)
                          {
                              if (e.ToString() != null)
                              {
                                  Label15.Text = name;
                                  Label27.Text = email;
                                  Label17.Text = msg;
                                  Label28.Text = dr.GetString(7).ToString();
                                  Label18.Text = name;
                          
                           %>
                           
                           <div style="margin-left:50px; height:150px; border-bottom:1px solid #E5ECF1;margin-bottom:20px">
                   <asp:Panel ID="Panel7" runat="server" style="display:none" BackColor="#C6ECFF" BorderStyle="Solid" 
                        BorderWidth="1px" Height="270px" Width="477px">
                        <asp:Panel ID="Panel8" runat="server" BackColor="White" Height="43px">
                            <table style="width: 100%; height: 41px;">
                                <tr>
                                    <td style="width: 210px">
                                        &nbsp;</td>
                                    <td style="width: 381px">
                                        <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="Black" Text="Replying to "></asp:Label>
                                        &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Medium" 
                                            ForeColor="Black"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton9" runat="server" Height="17px" 
                                            ImageUrl="~/images/Grey_close_x.svg.png" Width="21px" />
                                        &nbsp;&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Label ID="Label17" runat="server" ForeColor="Black"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Label ID="Label16" runat="server" Text="Replying to  "></asp:Label>
                                    <asp:Label ID="Label18" runat="server" ForeColor="#0066FF"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="84px" 
                                        TextMode="MultiLine" Width="407px" placeholder="Tweet Your Reply" required></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 409px">
                                    <asp:Button ID="Button4" runat="server" CssClass="myButton" Font-Size="Medium" 
                                        Height="42px" Text="Reply" onclick="Button1_Click" />
                                    <asp:Label ID="Label27" runat="server" Visible="False"></asp:Label>
                                    <asp:Label ID="Label28" runat="server" Visible="False"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <img class="imground" style="width:50px;height:50px" alt="" src="<%=profilename %>" />&nbsp;&nbsp;&nbsp; <label style="font-family:Calibri;font-weight:bold;color:Black"><%=name %></label>
                           <br />
                            <p style="font-family:Calibri;color:Black"><%=msg %></p> 
                            <br />
                            <br />
                             <asp:ImageButton ID="ImageButton5" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/replygrey.png" 
                                   onmouseover="this.src='images/replyblue.png';" 
                                   onmouseout="this.src='images/replygrey.png';" Width="20px" 
                                   onclick="ImageButton5_Click" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton6" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/retweetgrey.png" 
                                   onmouseover="this.src='images/retweetgreen.png';" 
                                   onmouseout="this.src='images/retweetgrey.png';" Width="20px" 
                                   onclick="ImageButton6_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton7" runat="server" CssClass="reply" 
                            Height="20px" ImageUrl="~/images/likegrey.png" 
                                   onmouseover="this.src='images/likered.png';" 
                                   onmouseout="this.src='images/likegrey.png';" Width="20px" 
                                   onclick="ImageButton7_Click" />                           
                    </div>
                     <%
                         }

                          }
                      }
                %>
                   
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 279px">
                &nbsp;</td>
            <td style="width: 32px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 279px">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td style="width: 32px">
                &nbsp;</td>
        </tr>
    </table>
    

</asp:Content>



