<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="ImportarTarea.aspx.cs" Inherits="WebApplication3.ImportarTarea" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Importar XML a BD</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">

    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Importar Tareas desde XML</h1>
        </asp:Panel>

    </div>

    <asp:Panel ID="Panel4" runat="server" Height="471px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        <asp:Panel ID="Panel5" runat="server" Height="81px">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <br />
                        Seleccionar asignatura a importar:<br />
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>HAS</asp:ListItem>
                            <asp:ListItem>SEG</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Button ID="Button1" runat="server" Text="Importar XML" OnClick="Button1_Click" /><br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Profesor.aspx">Atras</asp:HyperLink>
                    </div>
                    <div class="col-md-7">
                        <asp:Xml ID="Xml1" runat="server"></asp:Xml>
                        <br />
                        <br />
                    </div>
                </div>
            </div>


            

        </asp:Panel>

    </asp:Panel>
</asp:Content>
