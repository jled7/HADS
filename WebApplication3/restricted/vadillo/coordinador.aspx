<%@ Page Title="" Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="coordinador.aspx.cs" Inherits="WebApplication3.restricted.vadillo.coordinador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Nombre" DataValueField="codigo" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT [Nombre], [codigo] FROM [Asignaturas]"></asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server"></asp:Label>

</asp:Content>
