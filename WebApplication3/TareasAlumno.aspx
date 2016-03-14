<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="TareasAlumno.aspx.cs" Inherits="WebApplication3.TareasAlumno1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Tareas Alumno</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Tareas del Alumno</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
                   <br />
                   Asignaturas:<br />
                   <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                   <br />
                   <br />
                   <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                       <asp:ListItem Enabled="False" Selected="True">Codigo</asp:ListItem>
                       <asp:ListItem>Descripcion</asp:ListItem>
                       <asp:ListItem>Horas</asp:ListItem>
                       <asp:ListItem>Tipo Tarea</asp:ListItem>
                   </asp:CheckBoxList>
                   <br />
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                   <br />
                   <br />
                   <asp:GridView ID="GridView1" runat="server" AllowSorting="True" OnRowUpdating="GridView1_RowUpdating">

                       <Columns>
                           <asp:ButtonField CommandName="Update" Text="Instanciar" />
                       </Columns>

                   </asp:GridView>
                   <br />
                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Alumno.aspx">Pagina Principal</asp:HyperLink>
                   <br />
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desconexion" />
                   <br />
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>
