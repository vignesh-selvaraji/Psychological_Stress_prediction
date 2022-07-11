<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="ProfilePic.aspx.cs" Inherits="ProfilePic" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="475px">
        <table class="style1">
            <tr>
                <td style="height: 4px">
                </td>
                <td class="style3" style="height: 4px">
                </td>
                <td style="height: 4px">
                </td>
            </tr>
            <tr>
                <td style="height: 9px">
                </td>
                <td class="style3" style="height: 9px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="274px">
                        <table class="style5">
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                                    ForeColor="Black" Text="Add a Profile Photo"></asp:Label>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style14">
                                </td>
                                <td class="style10">
                                    <asp:Label ID="Label2" runat="server" Text="." Visible="False"></asp:Label>
                                </td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="textbox" required/>
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
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Let's Go" 
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
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="height: 9px">
                </td>
            </tr>
            <tr>
                <td style="height: 10px">
                </td>
                <td class="style3" style="height: 10px">
                </td>
                <td style="height: 10px">
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

