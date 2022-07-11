<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Stresslevel.aspx.cs" Inherits="Stresslevel" Title="Untitled Page" %>
<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel5" runat="server" Height="782px">
        <table class="style5">
            <tr>
                <td style="width: 219px; height: 9px">
                </td>
                <td style="width: 515px; height: 9px">
                </td>
                <td style="height: 9px" class="style11">
                </td>
            </tr>
            <tr>
                <td style="width: 219px; height: 293px">
                </td>
                <td style="width: 515px; height: 293px">
                    <asp:Panel ID="Panel2" runat="server" BackColor="White" BorderStyle="Solid" 
                        BorderWidth="1px" Height="738px" Width="717px">
                        <table class="style5">
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                    <asp:Image ID="Image1" runat="server" Height="32px" 
                                        ImageUrl="~/images/Twitter_bird_logo.png" Width="40px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                                        ForeColor="Black" Text="User Stress Level"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Label ID="Label3" runat="server" Text="." Visible="False"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Image ID="Image2" runat="server" CssClass="imground" Height="74px" 
                                        Width="74px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Calibri" 
                                        Font-Size="Large" ForeColor="#0078F0"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#000066" 
                                        Text="Last Tweet State   :"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#000066" 
                                        Text="Overall Tweet State   :"></asp:Label>
                                    &nbsp;
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 249px">
                                    &nbsp;</td>
                                <td class="style6" style="width: 238px">
                                    <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <table class="style5">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 418px">
                                    <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" Height="350" Width="500">
                                        <XAxis AxisColor="Black" Cross="0" CrossAuto="True" IsOmitMag="False" 
                                            IsPreventLabelOverlap="True" IsShowTitle="True" IsTicsBetweenLabels="True" 
                                            IsUseTenPower="False" IsVisible="True" IsZeroLine="False" MinSpace="0" Title="" 
                                            Type="Linear">
                                            <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" 
                                                IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                    IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                            </FontSpec>
                                            <MinorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MajorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MinorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <MajorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <Scale Align="Center" Format="g" FormatAuto="True" IsReverse="False" Mag="0" 
                                                MagAuto="True" MajorStep="1" MajorStepAuto="True" MajorUnit="Day" Max="0" 
                                                MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True" MinGrace="0.1" 
                                                MinorStep="1" MinorStepAuto="True" MinorUnit="Day">
                                                <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="False" 
                                                    IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                    <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                    <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                        IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                                </FontSpec>
                                            </Scale>
                                        </XAxis>
                                        <Y2Axis AxisColor="Black" Cross="0" CrossAuto="True" IsOmitMag="False" 
                                            IsPreventLabelOverlap="True" IsShowTitle="True" IsTicsBetweenLabels="True" 
                                            IsUseTenPower="False" IsVisible="False" IsZeroLine="True" MinSpace="0" Title="" 
                                            Type="Linear">
                                            <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" 
                                                IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                    IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                            </FontSpec>
                                            <MinorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MajorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MinorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <MajorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <Scale Align="Center" Format="g" FormatAuto="True" IsReverse="False" Mag="0" 
                                                MagAuto="True" MajorStep="1" MajorStepAuto="True" MajorUnit="Day" Max="0" 
                                                MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True" MinGrace="0.1" 
                                                MinorStep="1" MinorStepAuto="True" MinorUnit="Day">
                                                <FontSpec Angle="-90" Family="Arial" FontColor="Black" IsBold="False" 
                                                    IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                    <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                    <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                        IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                                </FontSpec>
                                            </Scale>
                                        </Y2Axis>
                                        <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="True" 
                                            IsItalic="False" IsUnderline="False" Size="16" StringAlignment="Center">
                                            <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                            <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                        </FontSpec>
                                        <MasterPaneFill AlignH="Center" AlignV="Center" Color="White" 
                                            ColorOpacity="100" IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" 
                                            Type="Solid" />
                                        <YAxis AxisColor="Black" Cross="0" CrossAuto="True" IsOmitMag="False" 
                                            IsPreventLabelOverlap="True" IsShowTitle="True" IsTicsBetweenLabels="True" 
                                            IsUseTenPower="False" IsVisible="True" IsZeroLine="True" MinSpace="0" Title="" 
                                            Type="Linear">
                                            <FontSpec Angle="-180" Family="Arial" FontColor="Black" IsBold="True" 
                                                IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                    IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                            </FontSpec>
                                            <MinorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MajorGrid Color="Black" DashOff="5" DashOn="1" IsVisible="False" 
                                                PenWidth="1" />
                                            <MinorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <MajorTic Color="Black" IsInside="True" IsOpposite="True" IsOutside="True" 
                                                PenWidth="1" Size="5" />
                                            <Scale Align="Center" Format="g" FormatAuto="True" IsReverse="False" Mag="0" 
                                                MagAuto="True" MajorStep="1" MajorStepAuto="True" MajorUnit="Day" Max="0" 
                                                MaxAuto="True" MaxGrace="0.1" Min="0" MinAuto="True" MinGrace="0.1" 
                                                MinorStep="1" MinorStepAuto="True" MinorUnit="Day">
                                                <FontSpec Angle="90" Family="Arial" FontColor="Black" IsBold="False" 
                                                    IsItalic="False" IsUnderline="False" Size="14" StringAlignment="Center">
                                                    <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                    <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                        IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="None" />
                                                </FontSpec>
                                            </Scale>
                                        </YAxis>
                                        <Legend IsHStack="True" IsReverse="False" IsVisible="True" Position="Top">
                                            <Location AlignH="Left" AlignV="Center" CoordinateFrame="ChartFraction" 
                                                Height="0" Width="0" X="0" Y="0">
                                                <TopLeft X="0" Y="0" />
                                                <BottomRight X="0" Y="0" />
                                            </Location>
                                            <FontSpec Angle="0" Family="Arial" FontColor="Black" IsBold="False" 
                                                IsItalic="False" IsUnderline="False" Size="12" StringAlignment="Center">
                                                <Border Color="Black" InflateFactor="0" IsVisible="False" Width="1" />
                                                <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                    IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="Solid" />
                                            </FontSpec>
                                            <Fill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                                IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="Brush" />
                                            <Border Color="Black" InflateFactor="0" IsVisible="True" Width="1" />
                                        </Legend>
                                        <PaneFill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                            IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="Solid" />
                                        <ChartFill AlignH="Center" AlignV="Center" Color="White" ColorOpacity="100" 
                                            IsScaled="True" IsVisible="True" RangeMax="0" RangeMin="0" Type="Brush" />
                                        <ChartBorder Color="Black" InflateFactor="0" IsVisible="True" Width="1" />
                                        <MasterPaneBorder Color="Black" InflateFactor="0" IsVisible="True" Width="1" />
                                        <Margins Bottom="10" Left="10" Right="10" Top="10" />
                                        <PaneBorder Color="Black" InflateFactor="0" IsVisible="True" Width="1" />
                                    </cc1:ZedGraphWeb>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>
                </td>
                <td style="height: 293px">
                </td>
            </tr>
            <tr>
                <td style="width: 219px">
                    &nbsp;</td>
                <td style="width: 515px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

