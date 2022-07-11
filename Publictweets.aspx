<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Publictweets.aspx.cs" Inherits="Publictweets" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Configuration" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <asp:Label ID="Label19" runat="server" Visible="False"></asp:Label>
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
                    BorderWidth="1px" Height="887px" Width="600px" ScrollBars="Auto">
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
                     
                    <div style="margin-left:50px; height:600px;margin-bottom:20px">
                    
                    
                        
                        <asp:DataList ID="DataList1" runat="server" 
                            onitemdatabound="DataList1_ItemDataBound" 
                            onitemcommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' 
                                    Visible="False" />
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' 
                                    Visible="False" />
                                <asp:Label ID="PhotonameLabel" runat="server" Text='<%# Eval("Photoname") %>' 
                                    Visible="False" />
                                <asp:Label ID="ProfileimgLabel" runat="server" Text='<%# Eval("Profileimg") %>' 
                                    Visible="False" />
                                <asp:Label ID="RetweetmsgLabel" runat="server" 
                                    Text='<%# Eval("Retweetmsg") %>' Font-Bold="False" ForeColor="Black" />
                                <asp:Label ID="ReplymsgLabel" runat="server" Text='<%# Eval("Replymsg") %>' 
                                    ForeColor="Black" />
                                <br />
                                &nbsp;<asp:Image ID="Image3" runat="server" CssClass="imground" Height="50px" 
                                    ImageUrl='<%# "tweetprofile.ashx?ID=" + Eval("ID") %>' Width="50px" />
                                &nbsp;&nbsp;
                                <asp:Label ID="NameLabel" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Font-Size="Medium" ForeColor="Black" Text='<%# Eval("Name") %>' />
                                <br />
                                <br />
                                <asp:Label ID="MessageLabel" runat="server" Font-Names="Calibri" 
                                    ForeColor="Black" Text='<%# Eval("Message") %>' />
                                <br />
                                <asp:Image ID="Image4" runat="server" 
                                  ImageUrl='<%# "tweetphoto.ashx?ID=" + Eval("ID") %>' Height="350px" 
                                    Width="500px"/>
                                <br />
                                <br />
                                <asp:ImageButton ID="ImageButton5" runat="server" Height="20px" 
                                    ImageUrl="~/images/replygrey.png" onmouseover="this.src='images/replyblue.png';" onmouseout="this.src='images/replygrey.png';" Width="20px" />
                                &nbsp;
                                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Text='<%# Eval("Replycnt") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:ImageButton ID="ImageButton6" runat="server" Height="20px" 
                                    ImageUrl="~/images/retweetgrey.png" onmouseover="this.src='images/retweetgreen.png';" onmouseout="this.src='images/retweetgrey.png';" Width="20px" />
                                &nbsp;
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Text='<%# Eval("Retweetcnt") %>'></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                
                                <asp:LinkButton ID="LinkButton3" runat="server" 
                                    background="this.src='images/likered.png';" CommandName="click" 
                                    Font-Bold="True" ForeColor="#0066FF">Likes</asp:LinkButton>
                                &nbsp;
                                <asp:Label ID="LikesLabel" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Text='<%# Eval("Likes") %>' />
                                <asp:ImageButton ID="ImageButton7" runat="server" 
                                    CommandArgument='<%# Eval("ID") %>' CommandName="click" Height="20px" 
                                    ImageUrl="~/images/likegrey.png" oncommand="ImageButton7_Command" 
                                    onmouseout="this.src='images/likegrey.png';" 
                                    onmouseover="this.src='images/likered.png';" Visible="False" Width="20px" />
                                <br />
                                <asp:ModalPopupExtender ID="ModalPopupExtender2" BackgroundCssClass="modalBackground" CancelControlID="ImageButton1" 
                                    PopupControlID="Panel3" TargetControlID="ImageButton5" runat="server">
                                </asp:ModalPopupExtender>
                                <asp:Panel ID="Panel3" runat="server" BackColor="#C6ECFF" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="286px" style="display:none" Width="477px">
                                    <asp:Panel ID="Panel4" runat="server" BackColor="White" Height="43px">
                                        <table style="width: 100%; height: 41px;">
                                            <tr>
                                                <td style="width: 210px">
                                                    &nbsp;</td>
                                                <td style="width: 381px">
                                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                        ForeColor="Black" Text="Replying to  "></asp:Label>
                                                    &nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                        ForeColor="Black" Text='<%# Eval("Name") %>'></asp:Label>
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
                                                <asp:Label ID="Label14" runat="server" Font-Names="Calibri" ForeColor="Black" Text='<%# Eval("Message") %>'></asp:Label>
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
                                                Replying to
                                                <asp:Label ID="Label15" runat="server" ForeColor="#0066FF" Text='<%# Eval("Name") %>'></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td style="width: 409px">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Height="84px" 
                                                    TextMode="MultiLine" Width="407px" placeholder = "Tweet your reply.."></asp:TextBox>
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
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Reply" 
                                                    CssClass="myButton">Reply</asp:LinkButton>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                
                                 <asp:ModalPopupExtender ID="ModalPopupExtender3" BackgroundCssClass="modalBackground" CancelControlID="ImageButton2" 
                                    PopupControlID="Panel5" TargetControlID="ImageButton6" runat="server">
                                </asp:ModalPopupExtender>
                                <asp:Panel ID="Panel5" runat="server" BackColor="#C6ECFF" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="286px" style="display:none" Width="477px">
                                    <asp:Panel ID="Panel6" runat="server" BackColor="White" Height="43px">
                                        <table style="width: 100%; height: 41px;">
                                            <tr>
                                                <td style="width: 151px">
                                                    &nbsp;</td>
                                                <td style="width: 381px">
                                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Medium" 
                                                        ForeColor="Black" Text="Retweet this to your  followers?"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton2" runat="server" Height="17px" 
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
                                                <asp:Label ID="Label18" runat="server" Font-Names="Calibri" ForeColor="Black" Text='<%# Eval("Message") %>'></asp:Label>
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
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Height="84px" 
                                                    TextMode="MultiLine" Width="407px" placeholder="Add a comment..."></asp:TextBox>
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
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Retweet" 
                                                    CssClass="myButton">Retweet</asp:LinkButton>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                                
                                <br />
                                <asp:Label ID="Label12" runat="server" 
                                    Text="__________________________________________________________________"></asp:Label>
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:StressCon %>" 
                            SelectCommand="SELECT [ID], [Name], [Email], [Message], [Photoname], [Photo], [Profile], [Profileimg], [Retweetmsg], [Replymsg], [Likes] FROM [tweet]">
                        </asp:SqlDataSource>
                    
                    
                        
                    </div>                   
                   
                   
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

