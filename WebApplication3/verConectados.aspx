<%@ Page Title="" Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="verConectados.aspx.cs" Inherits="WebApplication3.verConectados" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Ver Conectados</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <h1>Usuarios Conectados</h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="tick" />
        </Triggers>
        <ContentTemplate>
            <ajaxToolkit:Accordion ID="Accordion1" runat="server"
            CssClass="accordion"
            HeaderCssClass="accordionHeader"
            HeaderSelectedCssClass="accordionHeaderSelected"
            ContentCssClass="accordionContent">
            <Panes>
                <ajaxToolkit:AccordionPane ID="Profesores" runat="server" ContentCssClass="" HeaderCssClass="">
                    <Header>Profesores
<asp:Label ID="contadorProfesores" runat="server" CssClass="accordionCounter" Text="0"></asp:Label></Header>
                    <Content>
                        <asp:Label ID="ListaProfesores" runat="server" Text=""></asp:Label></Content>
                </ajaxToolkit:AccordionPane>
                <ajaxToolkit:AccordionPane ID="Alumnos" runat="server" ContentCssClass="" HeaderCssClass="">
                    <Header>Alumnos
<asp:Label ID="contadorAlumnos" runat="server" CssClass="accordionCounter" Text="0"></asp:Label></Header>
                    <Content>
                        <asp:Label ID="ListaAlumnos" runat="server" Text=""></asp:Label></Content>
                </ajaxToolkit:AccordionPane>
            </Panes>
        </ajaxToolkit:Accordion>
        </ContentTemplate>      
    </asp:UpdatePanel><asp:Timer ID="Timer1" runat="server" Interval="10000"></asp:Timer>
</asp:Content>