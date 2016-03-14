<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="InstanciarTarea.aspx.cs" Inherits="WebApplication3.InstanciarTarea1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Instanciar Tarea</title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 165px;
        }
        .auto-style4 {
            width: 165px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Instanciar Tarea</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="671px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
                   <br />
                   <table style="width:100%;">
                       <tr>
                           <td class="auto-style4">Usuario:</td>
                           <td>
                               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style3">Tarea:</td>
                           <td class="auto-style1">
                               <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style4">Horas Estimadas:</td>
                           <td>
                               <asp:TextBox ID="TextBox1" runat="server" Width="42px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style4">Horas Reales:</td>
                           <td>
                               <asp:TextBox ID="TextBox2" runat="server" Width="39px"></asp:TextBox>
                           </td>
                       </tr>
                   </table>
                   <br />
                   <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="Button1_Click" />
                   <br />
                   <br />
                   Tareas Instanciadas del Alumno<br />
                   <br />
                   <asp:Panel ID="Panel6" runat="server" CssClass="clearfix">
                       <asp:GridView ID="GridView1" runat="server" >
                       </asp:GridView>
                   </asp:Panel>
                   <br />
                   <br />
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/TareasAlumno.aspx">Ver Tareas Genericas</asp:HyperLink>
                   <br />
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>
