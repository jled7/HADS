<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Pagina inicial</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContent" runat="server">
    <div>
        <asp:Panel ID="Panel3" runat="server" Height="30px">
            <h1>Inicio</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="471px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
               <asp:Panel ID="Panel5" runat="server" Height="81px">
            Usuario:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="197px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
            <br />
            Contraseña:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Campo Requerido"></asp:RequiredFieldValidator>
            <br />
                   <br />
     
        </asp:Panel>
            <br />
            <span style="color:red"><asp:Label ID="errorMessage" runat="server" ></asp:Label></span>
            <br />
            <br />
                   <asp:Button ID="Button3" runat="server" OnClick="Button1_Click" Text="Login" />
            &nbsp;&nbsp;&nbsp;&nbsp;   
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registro.aspx">Registro</asp:HyperLink>
            <br />
            
            <br />
            <br />
            </asp:Panel>
       </asp:Content>