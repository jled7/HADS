<%@ Page Language="C#" MasterPageFile="~/master/standard.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication3.restricted.admin.admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
    <title>Eliminar Usuarios</title>
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
            <h1>Eliminar Usuarios</h1>
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server" Height="671px">
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS10ConnectionString %>" DeleteCommand="DELETE FROM [Usuarios] WHERE [email] = @email" InsertCommand="INSERT INTO [Usuarios] ([email], [nombre], [dni]) VALUES (@email, @nombre, @dni)" SelectCommand="SELECT [email], [nombre], [dni] FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [nombre] = @nombre, [dni] = @dni WHERE [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="dni" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="dni" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" Height="237px" Width="444px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="dni" HeaderText="dni" SortExpression="dni" />
                </Columns>
            </asp:GridView>
           
        </asp:Panel>
    
       </asp:Content>