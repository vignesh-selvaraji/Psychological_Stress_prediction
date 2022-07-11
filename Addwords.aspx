<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Addwords.aspx.cs" Inherits="Addwords" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="322px">
        <table class="style5">
            <tr>
                <td>
                    &nbsp;</td>
                <td style="width: 368px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 175px">
                </td>
                <td style="height: 175px; width: 368px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                        BorderWidth="1px" Height="262px" Width="500px">
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
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                        Font-Size="Medium" ForeColor="Black" Text="Add Stress Related Words"></asp:Label>
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
                                        Font-Names="Calibri" Font-Size="Large" Placeholder="Enter Word" required=""></asp:TextBox>
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
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" 
                                        onclick="Button1_Click" Text="ADD" Width="350px" />
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
                <td style="height: 175px">
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

