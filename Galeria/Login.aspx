<%@ Page Title="Galeria - Login" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Galeria.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 500px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td>
                &nbsp;</td>
            <td align ="right">
                <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" 
                    ValidationGroup="login"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Campo Requerido" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td align ="right">
                <asp:Label ID="Label2" runat="server" Text="Clave"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" MaxLength="20" TextMode="Password" 
                    ValidationGroup="login"></asp:TextBox>
                <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtClave" Display="Dynamic" ErrorMessage="Campo Requerido" 
                    ForeColor="Red" SetFocusOnError="True" ValidationGroup="login"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="3" align ="center">
                <asp:Button ID="btnLogin" runat="server" Text="Entrar" 
                    onclick="btnLogin_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:UsuarioDBEntitiesConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [Id] FROM [Usuario] WHERE (([Nombre] = @Nombre) AND ([Password] = @Password))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtNombre" Name="Nombre" PropertyName="Text" 
                            Type="String" />
                        <asp:ControlParameter ControlID="txtClave" Name="Password" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
            </td>
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
