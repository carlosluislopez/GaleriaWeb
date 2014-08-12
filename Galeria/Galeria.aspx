<%@ Page Title="Galeria - Mis Fotos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Galeria.aspx.cs" Inherits="Galeria.Galeria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView Width="500px" ID="gvImages" runat="server" AutoGenerateColumns="False" >
        <Columns>
            <asp:TemplateField HeaderText="Foto">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Manejador.ashx?ImID="+ Eval("Id") %>'/>
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SubirFotos.aspx">Subir Foto</asp:HyperLink>
&nbsp;
    </asp:Content>
