<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="ImportarTarea.aspx.cs" Inherits="WebApplication3.ImportarTarea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Importar XML a BD</title>
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
                
                   <br />
                   Seleccionar asignatura a importar:<br />
                   <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                       <asp:ListItem>HAS</asp:ListItem>
                       <asp:ListItem>SEG</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />
                   <asp:Button ID="Button1" runat="server" Text="Importar XML" />
                   <br />
                   <br />
                   <br />
                   <asp:Xml ID="Xml1" runat="server" DocumentSource="~/app_data/HAS.xml" TransformSource="~/app_data/XSLTFile.xsl"></asp:Xml>
                   <br />
                   <br />
                   <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Profesor.aspx">Atras</asp:HyperLink>
                
                   </asp:Panel>
     
        </asp:Panel>
</asp:Content>
