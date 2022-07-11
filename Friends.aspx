<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Friends.aspx.cs" Inherits="Friends" Title="Untitled Page" %>

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
                    BorderWidth="1px" Height="887px" Width="600px">
                    
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 201px">
                                &nbsp;</td>
                            <td style="width: 207px">
                                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                    ForeColor="Black" Text="Who to follow"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 201px">
                                &nbsp;</td>
                            <td style="width: 207px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                     
                    <div style="margin-left:200px; height:800px; margin-bottom:20px;overflow-y:scroll">
                    
                    
                        
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                            onitemcommand="DataList1_ItemCommand">
                            <ItemTemplate>
                                &nbsp;<asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' 
                                    Visible="False" />
                                <asp:Label ID="Label21" runat="server" Text='<%# Eval("Imgname") %>'  Visible="False"></asp:Label>
                                <br />
                                &nbsp;<asp:Image ID="Image2" runat="server" CssClass="imground" Height="50px" 
                                    Width="50px" ImageUrl='<%# "Profile.ashx?ID=" + Eval("ID") %>' />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="NameLabel" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                    Font-Size="Medium" ForeColor="Black" Text='<%# Eval("Name") %>' />
                                <br />
                                <br />
                                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CssClass="myButton" 
                                    CommandName="follow">Follow</asp:LinkButton>
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:StressCon %>" 
                            SelectCommand="SELECT [ID], [Name], [Imgname], [ProfilePic] FROM [Signup] WHERE ([Email] &lt;&gt; @Email)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label8" Name="Email" PropertyName="Text" 
                                    Type="String" />
                            </SelectParameters>
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
                
            </td>
            <td style="width: 32px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

