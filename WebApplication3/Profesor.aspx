<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="WebApplication3.WebForm1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Pagina de Profesor</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Pagina de Profesor</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TareasProfesor.aspx">Tareas</asp:HyperLink>
                   </br>
                   Desconexion</br>
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>