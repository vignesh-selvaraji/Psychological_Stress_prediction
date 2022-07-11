<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="UserStressState.aspx.cs" Inherits="UserStressState" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="513px">
        <table class="style5">
            <tr>
                <td style="height: 12px">
                </td>
                <td style="width: 368px; height: 12px;">
                </td>
                <td style="height: 12px">
                </td>
            </tr>
            <tr>
                <td style="height: 468px">
                </td>
                <td style="height: 468px; width: 368px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                        BorderWidth="1px" Height="441px" Width="693px">
                        <table class="style5">
                            <tr>
                                <td class="style13" style="width: 35px; height: 22px;">
                                </td>
                                <td class="style6" style="width: 622px; height: 22px;">
                                </td>
                                <td class="style9" style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="width: 35px; height: 31px;">
                                </td>
                                <td class="style6" style="width: 622px; height: 31px;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                                        ID="Label1" runat="server" Font-Bold="True" 
                                        Font-Size="Medium" ForeColor="Black" 
                                        Text="Detect Stress State of the Users"></asp:Label>
                                </td>
                                <td class="style11" style="height: 31px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style14" style="width: 35px; height: 24px;">
                                </td>
                                <td class="style10" style="width: 622px; height: 24px;">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    &nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="32px" 
                                        ImageUrl="~/images/Twitter_bird_logo.png" Width="40px" />
                                </td>
                                <td style="height: 24px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="width: 35px; height: 26px;">
                                </td>
                                <td class="style6" style="width: 622px; height: 26px;">
                                </td>
                                <td class="style9" style="height: 26px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="width: 35px; height: 276px;">
                                </td>
                                <td class="style6" style="width: 622px; height: 276px;">
                                    <asp:Panel ID="Panel4" runat="server" Height="308px" ScrollBars="Auto">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                                            Height="64px" Width="596px" onrowcommand="GridView1_RowCommand">
                                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <Columns>
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name">
                                                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                                                    SortExpression="Email" />
                                                <asp:BoundField DataField="Country" HeaderText="Country" 
                                                    SortExpression="Country" />
                                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                                <asp:TemplateField HeaderText="ProfilePic">
                                                    <ItemTemplate>
                                                        <asp:Image ID="Image2" runat="server" CssClass="imground" Height="51px" 
                                                            Width="54px" ImageUrl='<%# "Profile.ashx?ID=" + Eval("ID") %>' />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:ButtonField CommandName="Select" HeaderText="Stress State" 
                                                    ShowHeader="True" Text="Stress State">
                                                    <ControlStyle Font-Bold="False" Font-Underline="True" ForeColor="Blue" />
                                                </asp:ButtonField>
                                            </Columns>
                                            <PagerStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:StressCon %>" 
                                            
                                            SelectCommand="SELECT [ID], [Name], [Email], [Country], [Phone], [ProfilePic] FROM [Signup]">
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                </td>
                                <td style="height: 276px">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13" style="width: 35px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 622px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="height: 468px">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 368px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

