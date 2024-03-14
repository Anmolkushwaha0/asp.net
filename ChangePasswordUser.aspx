<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePasswordUser.aspx.cs" Inherits="ChangePasswordUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table cellpadding="0" cellspacing="0" 
        style="width: 100%; border-color: #000000">
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 286px">
            </td>
            <td style="height: 22px; width: 232px">
                <asp:Label ID="Label1" runat="server" Text="Enter Your Old Password"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" Height="181px" Visible="False">
                    <table align="center" cellpadding="0" cellspacing="0" 
    style="width: 100%; border: 2px solid #000000">
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                <asp:Label ID="Label2" runat="server" Text="Enter New Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                <asp:Label ID="Label3" runat="server" Text="Conferm Password"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                    Text="Change Password Now..!!" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 379px">
                                &nbsp;</td>
                            <td style="width: 254px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 286px">
                &nbsp;</td>
            <td style="width: 232px">
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

