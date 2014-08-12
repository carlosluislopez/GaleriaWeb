<%@ Page Title="Galeria - Subir Fotos" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SubirFotos.aspx.cs" Inherits="Galeria.SubirFotos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnSubir" runat="server" onclick="btnSubir_Click" 
        Text="Subir" />
</asp:Content>
