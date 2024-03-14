<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dashbord.aspx.cs" Inherits="Dashbord" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" 
        style="width: 100%; border: 2px solid #000000">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px">
                </td>
            <td colspan="2" style="height: 26px">
                <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" 
                    DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" 
                    ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px" 
                    style="font-size: large">
                    <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#FFFBD6" />
                    <DynamicSelectedStyle BackColor="#FFCC66" />
                    <Items>
                        <asp:MenuItem NavigateUrl="~/Dashbord.aspx" Text="Home" Value="Home">
                        </asp:MenuItem>
                        <asp:MenuItem Text="User Controls" Value="User Controls">
                            <asp:MenuItem Text="Change Picture" Value="Change Picture" 
                                NavigateUrl="~/ChangeUserPicture.aspx"></asp:MenuItem>
                            <asp:MenuItem Text="Change Password" Value="Change Password" 
                                NavigateUrl="~/ChangePasswordUser.aspx"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem Text="Search" Value="Search"></asp:MenuItem>
                        <asp:MenuItem Text="Order History" Value="Order History" 
                            NavigateUrl="~/odarhestare.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="View My Record" Value="View My Record" 
                            NavigateUrl="~/ViewCustomerRecord.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#990000" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#FFCC66" />
                </asp:Menu>
                <asp:DropShadowExtender ID="Menu1_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="Menu1">
                </asp:DropShadowExtender>
            </td>
            <td style="height: 26px">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Logout" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="165px" Width="142px" />
                <asp:RoundedCornersExtender ID="Image1_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Image1">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="Image1_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="Image1">
                </asp:DropShadowExtender>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="produtsid" 
                    DataSourceID="SqlDataSource1" RepeatColumns="5" Width="100%">
                    <ItemTemplate>
                        <br />
                        <table cellpadding="0" cellspacing="0" 
                            style="width: 100%; border: 1px solid #000000">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <a href="odar.aspx?var=<%# Eval("produtsid") %>">
                                    <asp:Image ID="Image2" runat="server" Height="176px" 
                                        ImageUrl='<%# Eval("img") %>' Width="160px" />
                                    <asp:RoundedCornersExtender ID="Image2_RoundedCornersExtender" runat="server" 
                                        Enabled="True" TargetControlID="Image2">
                                    </asp:RoundedCornersExtender>
                                    <asp:DropShadowExtender ID="Image2_DropShadowExtender" runat="server" 
                                        Enabled="True" TargetControlID="Image2">
                                    </asp:DropShadowExtender>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 22px">
                                    &nbsp;</td>
                                <td style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" 
                                        Text='<%# Eval("price") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 22px">
                                    &nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td style="height: 22px">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("produtsname") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" 
                                        Font-Size="Larger" Text='<%# Eval("stats") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:DropShadowExtender ID="DataList1_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="DataList1">
                </asp:DropShadowExtender>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:erpsystemConnectionString %>" 
                    SelectCommand="SELECT * FROM [myprodutstab]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager2" runat="server">
                </asp:ScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

