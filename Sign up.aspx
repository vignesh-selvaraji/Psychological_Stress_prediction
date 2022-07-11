<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Sign up.aspx.cs" Inherits="Sign_up" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="481px">
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
                <td class="style2">
                </td>
                <td class="style4">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="416px">
                        <table class="style5">
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                                    ForeColor="Black" Text="Sign up today."></asp:Label>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style14">
                                </td>
                                <td class="style10">
                                </td>
                                <td class="style9">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Full name" required Font-Names="Calibri"></asp:TextBox>
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
                                                    Font-Size="Large" Placeholder="Email" required 
                                                    Font-Names="Calibri"></asp:TextBox>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
                                </td>
                                <td class="style12">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="Please Enter a valid Email ID!" 
                                        Font-Italic="True" Font-Size="Small" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox" Font-Bold="True" 
                                                    Font-Size="Large" Placeholder="Password" required Font-Names="Calibri" 
                                                    TextMode="Password"></asp:TextBox>
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
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Sign up" 
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
                                            
                                                &nbsp;&nbsp;</td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style2">
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

