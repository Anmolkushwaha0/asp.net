<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeUserPicture.aspx.cs" Inherits="ChangeUserPicture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" 
        style="width: 100%; border: 2px solid #000000">
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td style="width: 187px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td style="width: 187px">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="175px" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Change Picture" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td style="width: 187px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td colspan="2" rowspan="7">
                <asp:Panel ID="Panel1" runat="server" Height="339px" Visible="False">
                    <table align="center" cellpadding="0" cellspacing="0" 
    style="width: 100%; border: 2px solid #800000">
                        <tr>
                            <td style="width: 186px">
                                <asp:Label ID="Label1" runat="server" Text="Upload New Image"></asp:Label>
                            </td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 22px; width: 186px">
                            </td>
                            <td style="height: 22px">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 186px; height: 34px">
                            </td>
                            <td style="height: 34px">
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 186px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 186px">
                                <asp:Image ID="Image2" runat="server" Height="192px" Width="177px" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                    Text="Upload New Image" />
                                &nbsp;<asp:Button ID="Button4" runat="server" Text="Reset" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 186px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 375px">
                &nbsp;</td>
            <td style="width: 187px">
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

