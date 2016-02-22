<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="Confirmar.aspx.cs" Inherits="WebApplication3.Confirmar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Confirmacion</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
  <div>
        <br />
        <center><h2><asp:Label ID="Label1" runat="server" Text="Error en la confirmacion"></asp:Label></h2>
    
    </div>

        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Inicio.aspx">Inicio</asp:HyperLink>
    </center>
</asp:Content>