<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="InsertarTarea.aspx.cs" Inherits="WebApplication3.InsertarTarea1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Insertar Tarea</title>
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            width: 279px;
        }
        .auto-style3 {
            width: 279px
        }
    </style>
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
                   <table style="width:100%;">
                       <tr>
                           <td class="auto-style2">Codigo:</td>
                           <td class="auto-style1">
                               <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style2">Descripción:</td>
                           <td class="auto-style1">
                               <asp:TextBox ID="TextBox2" runat="server" Height="58px" Width="659px"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style3">Asignatura:</td>
                           <td>
                               <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="codigo" DataValueField="codigo">
                               </asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" SelectCommand="SELECT Asignaturas.codigo FROM ProfesoresGrupo INNER JOIN GruposClase ON ProfesoresGrupo.codigogrupo = GruposClase.codigo INNER JOIN Asignaturas ON GruposClase.codigoasig = Asignaturas.codigo WHERE (ProfesoresGrupo.email = @mail)">
                                   <SelectParameters>
                                       <asp:SessionParameter Name="mail" SessionField="email" />
                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style3">Horas estimadas:</td>
                           <td>
                               <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style3">Tipo Tarea</td>
                           <td>
                               <asp:DropDownList ID="DropDownList2" runat="server">

                                   <asp:ListItem>Examen</asp:ListItem>
                                   <asp:ListItem>Laboratorio</asp:ListItem>
                                   <asp:ListItem>Ejercicio</asp:ListItem>
                                   <asp:ListItem>Trabajo</asp:ListItem>

                               </asp:DropDownList>
                           </td>
                       </tr>
                   </table>
                   <br>
                   <br>
                   <br></br>
                   <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Añadir" />
                   <br>
                   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" DeleteCommand="DELETE FROM [TareasGenericas] WHERE [Codigo] = @Codigo" InsertCommand="INSERT INTO [TareasGenericas] ([Codigo], [Descripcion], [CodAsig], [HEstimadas], [TipoTarea]) VALUES (@Codigo, @Descripcion, @CodAsig, @HEstimadas, @TipoTarea)" SelectCommand="SELECT [Codigo], [Descripcion], [CodAsig], [HEstimadas], [TipoTarea] FROM [TareasGenericas]" UpdateCommand="UPDATE [TareasGenericas] SET [Descripcion] = @Descripcion, [CodAsig] = @CodAsig, [HEstimadas] = @HEstimadas, [TipoTarea] = @TipoTarea WHERE [Codigo] = @Codigo">
                       <DeleteParameters>
                           <asp:Parameter Name="Codigo" Type="String" />
                       </DeleteParameters>
                       <InsertParameters>
                           <asp:ControlParameter ControlID="TextBox1" Name="Codigo" PropertyName="Text" Type="String" />
                           <asp:ControlParameter ControlID="TextBox2" Name="Descripcion" PropertyName="Text" Type="String" />
                           <asp:ControlParameter ControlID="DropDownList1" Name="CodAsig" PropertyName="SelectedValue" Type="String" />
                           <asp:ControlParameter ControlID="TextBox3" Name="HEstimadas" PropertyName="Text" Type="Int32" />
                           <asp:ControlParameter ControlID="DropDownList2" Name="TipoTarea" PropertyName="SelectedValue" Type="String" />
                       </InsertParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="Descripcion" Type="String" />
                           <asp:Parameter Name="CodAsig" Type="String" />
                           <asp:Parameter Name="HEstimadas" Type="Int32" />
                           <asp:Parameter Name="TipoTarea" Type="String" />
                           <asp:Parameter Name="Codigo" Type="String" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
                   <br>
                   <br></br>
                   <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/restricted/profesor/TareasProfesor.aspx">Ver Tareas</asp:HyperLink>
                   <br>
                   <br>
                   <br>
                   <br></br>
                   <br>
                   <br></br>
                   <br>
                   <br></br>
                   <br>
                   <br></br>
                   <br></br>
                   <br></br>
                   <br></br>
                   <br></br>
                   <br></br>
                   <br></br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </br>
                   </asp:Panel>
     
        </asp:Panel>
    
       </asp:Content>
