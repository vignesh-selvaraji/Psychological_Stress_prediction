﻿<%@ Page Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="494px">
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
                <td class="style2" style="height: 340px">
                </td>
                <td class="style4" style="height: 340px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                                    BorderWidth="1px" Height="371px">
                        <table class="style5">
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                                    ForeColor="Black" Text="Country and Phone number"></asp:Label>
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
                                       
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="textbox" 
                                        Font-Bold="True" Font-Names="Calibri" Font-Size="Large">	
		<asp:ListItem>Algeria (+213)</asp:ListItem>
		<asp:ListItem>Andorra (+376)</asp:ListItem>
		<asp:ListItem>Angola (+244)</asp:ListItem>
		<asp:ListItem>Anguilla (+1264)</asp:ListItem>
		<asp:ListItem>Antigua &amp; Barbuda (+1268)</asp:ListItem>
		<asp:ListItem>Argentina (+54)</asp:ListItem>
		<asp:ListItem>Armenia (+374)</asp:ListItem>
		<asp:ListItem>Aruba (+297)</asp:ListItem>
		<asp:ListItem>Australia (+61)</asp:ListItem>
		<asp:ListItem>Austria (+43)</asp:ListItem>
		<asp:ListItem>Azerbaijan (+994)</asp:ListItem>
		<asp:ListItem>Bahamas (+1242)</asp:ListItem>
		<asp:ListItem>Bahrain (+973)</asp:ListItem>
		<asp:ListItem>Bangladesh (+880)</asp:ListItem>
		<asp:ListItem>Barbados (+1246)</asp:ListItem>
		<asp:ListItem>Belarus (+375)</asp:ListItem>
		<asp:ListItem>Belgium (+32)</asp:ListItem>
		<asp:ListItem>Belize (+501)</asp:ListItem>
		<asp:ListItem>Benin (+229)</asp:ListItem>
		<asp:ListItem>Bermuda (+1441)</asp:ListItem>
		<asp:ListItem>Bhutan (+975)</asp:ListItem>
		<asp:ListItem>Bolivia (+591)</asp:ListItem>
		<asp:ListItem>Bosnia Herzegovina (+387)</asp:ListItem>
		<asp:ListItem>Botswana (+267)</asp:ListItem>
		<asp:ListItem>Brazil (+55)</asp:ListItem>
		<asp:ListItem>Brunei (+673)</asp:ListItem>
		<asp:ListItem>Bulgaria (+359)</asp:ListItem>
		<asp:ListItem>Burkina Faso (+226)</asp:ListItem>
		<asp:ListItem>Burundi (+257)</asp:ListItem>
		<asp:ListItem>Cambodia (+855)</asp:ListItem>
		<asp:ListItem>Cameroon (+237)</asp:ListItem>
		<asp:ListItem>Canada (+1)</asp:ListItem>
		<asp:ListItem>Cape Verde Islands (+238)</asp:ListItem>
		<asp:ListItem>Cayman Islands (+1345)</asp:ListItem>
		<asp:ListItem>Central African Republic (+236)</asp:ListItem>
		<asp:ListItem>Chile (+56)</asp:ListItem>
		<asp:ListItem>China (+86)</asp:ListItem>
		<asp:ListItem>Colombia (+57)</asp:ListItem>
		<asp:ListItem>Comoros (+269)</asp:ListItem>
		<asp:ListItem>Congo (+242)</asp:ListItem>
		<asp:ListItem>Cook Islands (+682)</asp:ListItem>
		<asp:ListItem>Costa Rica (+506)</asp:ListItem>
		<asp:ListItem>Croatia (+385)</asp:ListItem>
		<asp:ListItem>Cuba (+53)</asp:ListItem>
		<asp:ListItem>Cyprus North (+90392)</asp:ListItem>
		<asp:ListItem>Cyprus South (+357)</asp:ListItem>
		<asp:ListItem>Czech Republic (+42)</asp:ListItem>
		<asp:ListItem>Denmark (+45)</asp:ListItem>
		<asp:ListItem>Djibouti (+253)</asp:ListItem>
		<asp:ListItem>Dominica (+1809)</asp:ListItem>
		<asp:ListItem>Dominican Republic (+1809)</asp:ListItem>
		<asp:ListItem>Ecuador (+593)</asp:ListItem>
		<asp:ListItem>Egypt (+20)</asp:ListItem>
		<asp:ListItem>El Salvador (+503)</asp:ListItem>
		<asp:ListItem>Equatorial Guinea (+240)</asp:ListItem>
		<asp:ListItem>Eritrea (+291)</asp:ListItem>
		<asp:ListItem>Estonia (+372)</asp:ListItem>
		<asp:ListItem>Ethiopia (+251)</asp:ListItem>
		<asp:ListItem>Falkland Islands (+500)</asp:ListItem>
		<asp:ListItem>Faroe Islands (+298)</asp:ListItem>
		<asp:ListItem>Fiji (+679)</asp:ListItem>
		<asp:ListItem>Finland (+358)</asp:ListItem>
		<asp:ListItem>France (+33)</asp:ListItem>
		<asp:ListItem>French Guiana (+594)</asp:ListItem>
		<asp:ListItem>French Polynesia (+689)</asp:ListItem>
		<asp:ListItem>Gabon (+241)</asp:ListItem>
		<asp:ListItem>Gambia (+220)</asp:ListItem>
		<asp:ListItem>Georgia (+7880)</asp:ListItem>
		<asp:ListItem>Germany (+49)</asp:ListItem>
		<asp:ListItem>Ghana (+233)</asp:ListItem>
		<asp:ListItem>Gibraltar (+350)</asp:ListItem>
		<asp:ListItem>Greece (+30)</asp:ListItem>
		<asp:ListItem>Greenland (+299)</asp:ListItem>
		<asp:ListItem>Grenada (+1473)</asp:ListItem>
		<asp:ListItem>Guadeloupe (+590)</asp:ListItem>
		<asp:ListItem>Guam (+671)</asp:ListItem>
		<asp:ListItem>Guatemala (+502)</asp:ListItem>
		<asp:ListItem>Guinea (+224)</asp:ListItem>
		<asp:ListItem>Guinea - Bissau (+245)</asp:ListItem>
		<asp:ListItem>Guyana (+592)</asp:ListItem>
		<asp:ListItem>Haiti (+509)</asp:ListItem>
		<asp:ListItem>Honduras (+504)</asp:ListItem>
		<asp:ListItem>Hong Kong (+852)</asp:ListItem>
		<asp:ListItem>Hungary (+36)</asp:ListItem>
		<asp:ListItem>Iceland (+354)</asp:ListItem>
		<asp:ListItem>India (+91)</asp:ListItem>
		<asp:ListItem>Indonesia (+62)</asp:ListItem>
		<asp:ListItem>Iran (+98)</asp:ListItem>
		<asp:ListItem>Iraq (+964)</asp:ListItem>
		<asp:ListItem>Ireland (+353)</asp:ListItem>
		<asp:ListItem>Israel (+972)</asp:ListItem>
		<asp:ListItem>Italy (+39)</asp:ListItem>
		<asp:ListItem>Jamaica (+1876)</asp:ListItem>
		<asp:ListItem>Japan (+81)</asp:ListItem>
		<asp:ListItem>Jordan (+962)</asp:ListItem>
		<asp:ListItem>Kazakhstan (+7)</asp:ListItem>
		<asp:ListItem>Kenya (+254)</asp:ListItem>
		<asp:ListItem>Kiribati (+686)</asp:ListItem>
		<asp:ListItem>Korea North (+850)</asp:ListItem>
		<asp:ListItem>Korea South (+82)</asp:ListItem>
		<asp:ListItem>Kuwait (+965)</asp:ListItem>
		<asp:ListItem>Kyrgyzstan (+996)</asp:ListItem>
		<asp:ListItem>Laos (+856)</asp:ListItem>
		<asp:ListItem>Latvia (+371)</asp:ListItem>
		<asp:ListItem>Lebanon (+961)</asp:ListItem>
		<asp:ListItem>Lesotho (+266)</asp:ListItem>
		<asp:ListItem>Liberia (+231)</asp:ListItem>
		<asp:ListItem>Libya (+218)</asp:ListItem>
		<asp:ListItem>Liechtenstein (+417)</asp:ListItem>
		<asp:ListItem>Lithuania (+370)</asp:ListItem>
		<asp:ListItem>Luxembourg (+352)</asp:ListItem>
		<asp:ListItem>Macao (+853)</asp:ListItem>
		<asp:ListItem>Macedonia (+389)</asp:ListItem>
		<asp:ListItem>Madagascar (+261)</asp:ListItem>
		<asp:ListItem>Malawi (+265)</asp:ListItem>
		<asp:ListItem>Malaysia (+60)</asp:ListItem>
		<asp:ListItem>Maldives (+960)</asp:ListItem>
		<asp:ListItem>Mali (+223)</asp:ListItem>
		<asp:ListItem>Malta (+356)</asp:ListItem>
		<asp:ListItem>Marshall Islands (+692)</asp:ListItem>
		<asp:ListItem>Martinique (+596)</asp:ListItem>
		<asp:ListItem>Mauritania (+222)</asp:ListItem>
		<asp:ListItem>Mayotte (+269)</asp:ListItem>
		<asp:ListItem>Mexico (+52)</asp:ListItem>
		<asp:ListItem>Micronesia (+691)</asp:ListItem>
		<asp:ListItem>Moldova (+373)</asp:ListItem>
		<asp:ListItem>Monaco (+377)</asp:ListItem>
		<asp:ListItem>Mongolia (+976)</asp:ListItem>
		<asp:ListItem>Montserrat (+1664)</asp:ListItem>
		<asp:ListItem>Morocco (+212)</asp:ListItem>
		<asp:ListItem>Mozambique (+258)</asp:ListItem>
		<asp:ListItem>Myanmar (+95)</asp:ListItem>
		<asp:ListItem>Namibia (+264)</asp:ListItem>
		<asp:ListItem>Nauru (+674)</asp:ListItem>
		<asp:ListItem>Nepal (+977)</asp:ListItem>
		<asp:ListItem>Netherlands (+31)</asp:ListItem>
		<asp:ListItem>New Caledonia (+687)</asp:ListItem>
		<asp:ListItem>New Zealand (+64)</asp:ListItem>
		<asp:ListItem>Nicaragua (+505)</asp:ListItem>
		<asp:ListItem>Niger (+227)</asp:ListItem>
		<asp:ListItem>Nigeria (+234)</asp:ListItem>
		<asp:ListItem>Niue (+683)</asp:ListItem>
		<asp:ListItem>Norfolk Islands (+672)</asp:ListItem>
		<asp:ListItem>Northern Marianas (+670)</asp:ListItem>
		<asp:ListItem>Norway (+47)</asp:ListItem>
		<asp:ListItem>Oman (+968)</asp:ListItem>
		<asp:ListItem>Palau (+680)</asp:ListItem>
		<asp:ListItem>Panama (+507)</asp:ListItem>
		<asp:ListItem>Papua New Guinea (+675)</asp:ListItem>
		<asp:ListItem>Paraguay (+595)</asp:ListItem>
		<asp:ListItem>Peru (+51)</asp:ListItem>
		<asp:ListItem>Philippines (+63)</asp:ListItem>
		<asp:ListItem>Poland (+48)</asp:ListItem>
		<asp:ListItem>Portugal (+351)</asp:ListItem>
		<asp:ListItem>Puerto Rico (+1787)</asp:ListItem>
		<asp:ListItem>Qatar (+974)</asp:ListItem>
		<asp:ListItem>Reunion (+262)</asp:ListItem>
		<asp:ListItem>Romania (+40)</asp:ListItem>
		<asp:ListItem>Russia (+7)</asp:ListItem>
		<asp:ListItem>Rwanda (+250)</asp:ListItem>
		<asp:ListItem>San Marino (+378)</asp:ListItem>
		<asp:ListItem>Sao Tome &amp; Principe (+239)</asp:ListItem>
		<asp:ListItem>Saudi Arabia (+966)</asp:ListItem>
		<asp:ListItem>Senegal (+221)</asp:ListItem>
		<asp:ListItem>Serbia (+381)</asp:ListItem>
		<asp:ListItem>Seychelles (+248)</asp:ListItem>
		<asp:ListItem>Sierra Leone (+232)</asp:ListItem>
		<asp:ListItem>Singapore (+65)</asp:ListItem>
		<asp:ListItem>Slovak Republic (+421)</asp:ListItem>
		<asp:ListItem>Slovenia (+386)</asp:ListItem>
		<asp:ListItem>Solomon Islands (+677)</asp:ListItem>
		<asp:ListItem>Somalia (+252)</asp:ListItem>
		<asp:ListItem>South Africa (+27)</asp:ListItem>
		<asp:ListItem>Spain (+34)</asp:ListItem>
		<asp:ListItem>Sri Lanka (+94)</asp:ListItem>
		<asp:ListItem>St. Helena (+290)</asp:ListItem>
		<asp:ListItem>St. Kitts (+1869)</asp:ListItem>
		<asp:ListItem>St. Lucia (+1758)</asp:ListItem>
		<asp:ListItem>Sudan (+249)</asp:ListItem>
		<asp:ListItem>Suriname (+597)</asp:ListItem>
		<asp:ListItem>Swaziland (+268)</asp:ListItem>
		<asp:ListItem>Sweden (+46)</asp:ListItem>
		<asp:ListItem>Switzerland (+41)</asp:ListItem>
		<asp:ListItem>Syria (+963)</asp:ListItem>
		<asp:ListItem>Taiwan (+886)</asp:ListItem>
		<asp:ListItem>Tajikstan (+7)</asp:ListItem>
		<asp:ListItem>Thailand (+66)</asp:ListItem>
		<asp:ListItem>Togo (+228)</asp:ListItem>
		<asp:ListItem>Tonga (+676)</asp:ListItem>
		<asp:ListItem>Trinidad &amp; Tobago (+1868)</asp:ListItem>
		<asp:ListItem>Tunisia (+216)</asp:ListItem>
		<asp:ListItem>Turkey (+90)</asp:ListItem>
		<asp:ListItem>Turkmenistan (+7)</asp:ListItem>
		<asp:ListItem>Turkmenistan (+993)</asp:ListItem>
		<asp:ListItem>Turks &amp; Caicos Islands (+1649)</asp:ListItem>
		<asp:ListItem>Tuvalu (+688)</asp:ListItem>
		<asp:ListItem>Uganda (+256)</asp:ListItem>
		<asp:ListItem>UK (+44)</asp:ListItem>
		<asp:ListItem>Ukraine (+380)</asp:ListItem>
		<asp:ListItem>United Arab Emirates (+971)</asp:ListItem>
		<asp:ListItem>Uruguay (+598)</asp:ListItem>
		<asp:ListItem>USA (+1)</asp:ListItem>
		<asp:ListItem>Uzbekistan (+7)</asp:ListItem>
		<asp:ListItem>Vanuatu (+678)</asp:ListItem>
		<asp:ListItem>Vatican City (+379)</asp:ListItem>
		<asp:ListItem>Venezuela (+58)</asp:ListItem>
		<asp:ListItem>Vietnam (+84)</asp:ListItem>
		<asp:ListItem>Virgin Islands - British (+1284)</asp:ListItem>
		<asp:ListItem>Virgin Islands - US (+1340)</asp:ListItem>
		<asp:ListItem>Wallis &amp; Futuna (+681)</asp:ListItem>
		<asp:ListItem>Yemen (North)(+969)</asp:ListItem>
		<asp:ListItem>Yemen (South)(+967)</asp:ListItem>
		<asp:ListItem>Zambia (+260)</asp:ListItem>
		<asp:ListItem>Zimbabwe (+263)</asp:ListItem>
</asp:DropDownList>                         &nbsp;</td>
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
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox" Font-Bold="True" 
                                        Font-Names="Calibri" Font-Size="Large" Placeholder="Phone number" required></asp:TextBox>
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style15">
                                </td>
                                <td class="style12">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                        ControlToValidate="TextBox1" ErrorMessage="Please Enter Only Numbers!" 
                                        Font-Italic="True" Font-Size="Small" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                                </td>
                                <td class="style11">
                                </td>
                            </tr>
                            <tr>
                                <td class="style13">
                                                &nbsp;</td>
                                <td class="style6">
                                    <asp:Button ID="Button1" runat="server" CssClass="myButton" Text="Next" 
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
                                    &nbsp;&nbsp;
                                </td>
                                <td>
                                                &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td class="style2" style="height: 340px">
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

