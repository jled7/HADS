﻿<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="Alumno.aspx.cs" Inherits="WebApplication3.Alumno1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Pagina de Alumno</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Pagina de Alumno</h1>
        </asp:Panel>
    
    </div>
   
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/restricted/alumno/TareasAlumno.aspx">Tareas</asp:HyperLink>
                   
                   
                   
                   </br>
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desconexion" /></br>
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>