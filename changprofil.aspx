<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changprofil.aspx.cs" Inherits="changprofil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%; border: 2px solid #000000">
    <tr>
        <td style="width: 540px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 540px">
            &nbsp;</td>
        <td>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
                AutoGenerateRows="False" DataKeyNames="fullname" DataSourceID="SqlDataSource1" 
                Height="50px" Width="468px">
                <Fields>
                    <asp:BoundField DataField="fullname" HeaderText="fullname" ReadOnly="True" 
                        SortExpression="fullname" />
                    <asp:BoundField DataField="mobil.no" HeaderText="mobil.no" 
                        SortExpression="mobil.no" />
                    <asp:BoundField DataField="gender" HeaderText="gender" 
                        SortExpression="gender" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                        ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:erpsystemConnectionString %>" 
                DeleteCommand="DELETE FROM [registration] WHERE [fullname] = @fullname" 
                InsertCommand="INSERT INTO [registration] ([fullname], [email], [mobil.no], [password], [re-password], [img], [gender]) VALUES (@fullname, @email, @column1, @password, @column2, @img, @gender)" 
                SelectCommand="SELECT * FROM [registration]" 
                UpdateCommand="UPDATE [registration] SET [email] = @email, [mobil.no] = @column1, [password] = @password, [re-password] = @column2, [img] = @img, [gender] = @gender WHERE [fullname] = @fullname">
                <DeleteParameters>
                    <asp:Parameter Name="fullname" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fullname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="column2" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="column2" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="fullname" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 540px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 540px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 540px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 540px">
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

