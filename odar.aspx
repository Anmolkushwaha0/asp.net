<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="odar.aspx.cs" Inherits="odar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" cellpadding="0" cellspacing="0" 
        style="width: 100%; border: 2px solid #000000">
        <tr>
            <td style="width: 517px; height: 22px;">
                </td>
            <td style="width: 185px; height: 22px;">
                </td>
            <td style="width: 196px; height: 22px;">
                </td>
            <td style="height: 22px">
                </td>
        </tr>
        <tr>
            <td style="height: 22px; width: 517px">
            </td>
            <td style="height: 22px; width: 185px">
                <asp:Label ID="Label1" runat="server" Text="product id"></asp:Label>
            </td>
            <td style="height: 22px; width: 196px">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="13">
                <asp:Image ID="Image1" runat="server" Height="310px" Width="324px" />
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label2" runat="server" Text="product name"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label3" runat="server" Text="price"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label4" runat="server" Text="description"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--Select--</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label6" runat="server" Text="amount"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label7" runat="server" Text="payment mode"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>----selcet</asp:ListItem>
                    <asp:ListItem>online</asp:ListItem>
                    <asp:ListItem>cod</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                <asp:Label ID="Label13" runat="server" Text="Enter Full Address"></asp:Label>
            </td>
            <td style="width: 196px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
                <asp:Button ID="Button1" runat="server" Text="order now" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 517px">
                &nbsp;</td>
            <td style="width: 185px">
                &nbsp;</td>
            <td style="width: 196px">
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

