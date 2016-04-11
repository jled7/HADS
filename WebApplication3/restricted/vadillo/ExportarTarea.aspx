<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="ExportarTarea.aspx.cs" Inherits="WebApplication3.ExportarTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Exportar BD a XML</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>

        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Exportar Tareas</h1>
        </asp:Panel>
    </div>

    <asp:Panel ID="Panel4" runat="server" Height="471px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        <asp:Panel ID="Panel5" runat="server" Height="81px">

            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        Selecciona asignatura a exportar:<br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="codigo" DataValueField="codigo">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT Asignaturas.codigo FROM ProfesoresGrupo INNER JOIN GruposClase ON ProfesoresGrupo.codigogrupo = GruposClase.codigo INNER JOIN Asignaturas ON GruposClase.codigoasig = Asignaturas.codigo WHERE (ProfesoresGrupo.email = @mail)">
                            <SelectParameters>
                                <asp:SessionParameter Name="mail" SessionField="email" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Exportar a XML" />
                        &nbsp;<br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" Visible="False">Descargar</asp:HyperLink>
                        <br />
                        <br />
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="/restricted/profesor/Profesor.aspx">Atras</asp:HyperLink>
                    </div>
                    <div class="col-md-7">
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Codigo" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CheckBoxField DataField="Explotacion" HeaderText="Explotacion" SortExpression="Explotacion" />
                                <asp:BoundField DataField="HEstimadas" HeaderText="HEstimadas" SortExpression="HEstimadas" />
                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                <asp:BoundField DataField="Codigo" HeaderText="Codigo" ReadOnly="True" SortExpression="Codigo" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT [Explotacion], [HEstimadas], [Descripcion], [Codigo] FROM [TareasGenericas] WHERE ([CodAsig] = @CodAsig)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList1" Name="CodAsig" PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </div>
                </div>
            </div>


           

        </asp:Panel>

    </asp:Panel>

</asp:Content>
