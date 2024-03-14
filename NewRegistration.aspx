<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewRegistration.aspx.cs" Inherits="NewRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" 
        style="width: 100%; border: 2px solid #000000">
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label1" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label2" runat="server" Text="Full Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px; height: 22px">
            </td>
            <td style="width: 195px; height: 22px">
                <asp:Label ID="Label3" runat="server" Text="Contact No"></asp:Label>
            </td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label6" runat="server" Text="ReType Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 22px; width: 500px">
            </td>
            <td style="height: 22px; width: 195px">
            </td>
            <td style="height: 22px">
            </td>
            <td style="height: 22px">
            </td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                <asp:Label ID="Label7" runat="server" Text="Upload Photo"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Register" />
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 500px">
                &nbsp;</td>
            <td style="width: 195px">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

