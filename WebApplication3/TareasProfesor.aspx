<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="TareasProfesor.aspx.cs" Inherits="WebApplication3.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Tareas Profesor</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Tareas del Profesor</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InsertarTarea.aspx">Insertar Tarea</asp:HyperLink>
                   </br>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Profesor.aspx">Pagina Principal</asp:HyperLink>
                   </br>
                   Desconexion</br>
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>

