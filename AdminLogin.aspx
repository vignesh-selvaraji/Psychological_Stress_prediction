<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="467px">
        <table class="style1">
            <tr>
                <td>
                                &nbsp;</td>
                <td class="style3">
                                &nbsp;</td>
                <td>
                                &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" style="height: 361px">
                </td>
                <td class="style4" style="height: 361px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="360px">
                        <table class="style5">
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                                &nbsp;</td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                    &nbsp;</td>
                                <td class="style6">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Black" Text="Admin Login"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style14">
                                </td>
                                <td class="style10">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="32px" 
                                        ImageUrl="~/images/Twitter_bird_logo.png" Width="40px" />
                                </td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Username" required Font-Names="Calibri"></asp:TextBox>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
                                </td>
                                <td class="style12">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Password" required 
                                                    Font-Names="Calibri" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
                                </td>
                                <td class="style12">
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Log in" 
                                                    Width="350px" onclick="Button1_Click" />
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                                &nbsp;</td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style2" style="height: 361px">
                </td>
            </tr>
            <tr>
                <td>
                                &nbsp;</td>
                <td class="style3">
                                &nbsp;</td>
                <td>
                                &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

