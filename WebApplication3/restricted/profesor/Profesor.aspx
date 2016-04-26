<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="Profesor.aspx.cs" Inherits="WebApplication3.Profesor" %>

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
            <h3>Acciones</h3>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/restricted/profesor/TareasProfesor.aspx">Ver Tareas</asp:HyperLink>
            <br><br>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/restricted/profesor/ImportarTarea.aspx">Importar tareas (XMLDocument)</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="/restricted/profesor/ImportarTareaDS.aspx">Importar tareas (DataSet)</asp:HyperLink>
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="/restricted/vadillo/ExportarTarea.aspx">Exportar tareas</asp:HyperLink> (* Solo Accesible para Vadillo)
                <br/>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/restricted/vadillo/coordinador.aspx">Media Tareas</asp:HyperLink>
                    <br/>
                <br/>
            <br>
            <br></br>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desconexion" />
            <br>
            <br>
            <br></br>
            <br></br>
            <br></br>
            <br></br>
            </br>
            </br>
            </br>
                    </br/>
                    </br/>
        </asp:Panel>

    </asp:Panel>

</asp:Content>
