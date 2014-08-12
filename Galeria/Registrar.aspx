<%@ Page Title="Galeria - Registrar Usuario" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Galeria.Registrar" %>
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
        <td align ="right">
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtNombre" runat="server" MaxLength="50"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Campo Requerido" 
                ForeColor="Red" SetFocusOnError="True" ValidationGroup="usuario"></asp:RequiredFieldValidator>
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
            <asp:TextBox ID="txtClave" runat="server" MaxLength="20" TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtClave" Display="Dynamic" ErrorMessage="Campo Requerido" 
                ForeColor="Red" SetFocusOnError="True" ValidationGroup="usuario"></asp:RequiredFieldValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td align ="right">
            <asp:Label ID="Label3" runat="server" Text="Confirmar Clave"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:TextBox ID="txtConfirmarClave" runat="server" MaxLength="20" 
                TextMode="Password"></asp:TextBox>
            <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtConfirmarClave" Display="Dynamic" 
                ErrorMessage="Campo Requerido" ForeColor="Red" SetFocusOnError="True" 
                ValidationGroup="usuario"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtClave" ControlToValidate="txtConfirmarClave" 
                Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="Red" 
                SetFocusOnError="True" ValidationGroup="usuario"></asp:CompareValidator>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="3" align ="center">
            <asp:Button ID="btnRegistrar" runat="server" onclick="btnRegistrar_Click" 
                style="height: 26px" Text="Registrar" />
            <asp:Button ID="btnCancelar" runat="server" onclick="btnCancelar_Click" 
                Text="Cancelar" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:UsuarioDBEntitiesConnectionString %>" 
                SelectCommand="SELECT [Id], [Nombre], [Password] FROM [Usuario]" 
                InsertCommand="INSERT INTO Usuario(Nombre, Password) VALUES (@Nombre, @Password)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtNombre" Name="Nombre" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtClave" Name="Password" 
                        PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>
