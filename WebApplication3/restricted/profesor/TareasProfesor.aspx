<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="TareasProfesor.aspx.cs" Inherits="WebApplication3.TareasProfesor1" %>
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
                   <br />
                   Asignaturas:<br />
                   <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="codigo" DataValueField="codigo" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                   </asp:DropDownList>
                   <br />
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/restricted/profesor/InsertarTarea.aspx">Insertar Tarea</asp:HyperLink>
                   <br />
                   <br />
                   <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource2" AutoGenerateEditButton="True">
                       <Columns>
                           <asp:CheckBoxField DataField="Explotacion" HeaderText="Explotacion" SortExpression="Explotacion" />
                           <asp:BoundField DataField="HEstimadas" HeaderText="HEstimadas" SortExpression="HEstimadas" />
                           <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                           <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" ReadOnly="True" />
                       </Columns>
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT [Explotacion], [HEstimadas], [Descripcion], [Codigo] FROM [TareasGenericas] WHERE ([CodAsig] = @CodAsig)" DeleteCommand="DELETE FROM [TareasGenericas] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [TareasGenericas] ([Explotacion], [HEstimadas], [Descripcion], [Codigo]) VALUES (@Explotacion, @HEstimadas, @Descripcion, @Codigo)" UpdateCommand="UPDATE [TareasGenericas] SET [Explotacion] = @Explotacion, [HEstimadas] = @HEstimadas, [Descripcion] = @Descripcion WHERE [Codigo] = @Codigo">
                       <DeleteParameters>
                           <asp:Parameter Name="Codigo" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:Parameter Name="Explotacion" Type="Boolean" />
                           <asp:Parameter Name="HEstimadas" Type="Int32" />
                           <asp:Parameter Name="Descripcion" Type="String" />
                           <asp:Parameter Name="Codigo" Type="String" />
                       </InsertParameters>
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList1" Name="CodAsig" PropertyName="SelectedValue" Type="String" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Explotacion" Type="Boolean" />
                           <asp:Parameter Name="HEstimadas" Type="Int32" />
                           <asp:Parameter Name="Descripcion" Type="String" />
                           <asp:Parameter Name="Codigo" Type="String" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   <br />
                   <br />
                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/restricted/profesor/Profesor.aspx">Pagina Principal</asp:HyperLink>
                   <br />
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desconexion" /><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT Asignaturas.codigo FROM ProfesoresGrupo INNER JOIN GruposClase ON ProfesoresGrupo.codigogrupo = GruposClase.codigo INNER JOIN Asignaturas ON GruposClase.codigoasig = Asignaturas.codigo WHERE (ProfesoresGrupo.email = @mail)">
                       <SelectParameters>
                           <asp:SessionParameter Name="mail" SessionField="email" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   <br />
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>

