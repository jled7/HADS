<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="InsertarTarea.aspx.cs" Inherits="WebApplication3.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Insertar Tarea</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Insertar Tarea</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
                   Añadir Formulario de Tarea</br>
                   OK</br>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TareasProfesor.aspx">Ver Tareas</asp:HyperLink>
                   </br>
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>
