<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Productos2.aspx.cs" Inherits="Vivero.Productos2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <h3>Buscar Producto</h3>
        <asp:TextBox ID="txtBuscarProducto" runat="server"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="Buscar_Click" />
        <br /><br />

        <div id="productoDetalle" runat="server" visible="false">
            <h3 runat="server" id="prod"></h3>
            <p runat="server" id="desc"></p>
            <img runat="server" id="urlp" height="420" width="327" />
            <br />
            <h3 runat="server" id="precio"></h3>
            <br />
        <h5>Cantidad</h5>
            <asp:DropDownList ID="ddlCantidad" runat="server">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />
            <asp:Button ID="btnAgregarAlCarrito" runat="server" Text="Agregar al carrito" OnClick="AgregarAlCarrito_Click" BackColor="#66FF99" Width="133px" />
            <asp:Label ID="lblMensajeError" runat="server" Visible="false" ForeColor="Red"></asp:Label>
        </div>
    </main>
</asp:Content>
