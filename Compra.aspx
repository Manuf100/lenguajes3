<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Compra.aspx.cs" Inherits="Vivero.Compra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/formulario.css" rel="stylesheet" />
    <main>
        <div id="carrito" runat="server">
            <!-- Aquí se mostrarán los productos en el carrito -->
        </div>
        <div>
            <b><asp:Label ID="lblTotal" runat="server" Text="" Font-Size="20px"></asp:Label></b>
        </div>
        <div class="form-container">
            <h2>Formulario de Datos</h2>
            <asp:Panel ID="panelFormulario" runat="server">
                <div class="form-group">
                    <label for="nombre">Nombre: (*)</label>
                    <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="apellido">Apellido: (*)</label>
                    <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="El apellido es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="mail">Email: (*)</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="El email no es válido." CssClass="text-danger" Display="Dynamic" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección: (*)</label>
                    <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="La dirección es obligatoria." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="numero">Número: (*)</label>
                    <asp:TextBox ID="txtNumero" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNumero" runat="server" ControlToValidate="txtNumero" ErrorMessage="El número es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="ciudad">Ciudad: (*)</label>
                    <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="txtCiudad" ErrorMessage="La ciudad es obligatoria." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="provincia">Provincia: (*)</label>
                    <asp:TextBox ID="txtProvincia" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="txtProvincia" ErrorMessage="La provincia es obligatoria." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="pais">País: (*)</label>
                    <asp:TextBox ID="txtPais" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPais" runat="server" ControlToValidate="txtPais" ErrorMessage="El país es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="codigoPostal">Código Postal: (*)</label>
                    <asp:TextBox ID="txtCodigoPostal" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCodigoPostal" runat="server" ControlToValidate="txtCodigoPostal" ErrorMessage="El código postal es obligatorio." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="medioPago">Medio de Pago: (*)</label>
                    <asp:DropDownList ID="ddlMedioPago" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Efectivo" Value="Efectivo"></asp:ListItem>
                        <asp:ListItem Text="Transferencia" Value="Transferencia"></asp:ListItem>
                        <asp:ListItem Text="Débito" Value="Debito"></asp:ListItem>
                        <asp:ListItem Text="Crédito" Value="Credito"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvMedioPago" runat="server" ControlToValidate="ddlMedioPago" InitialValue="" ErrorMessage="Debe seleccionar un medio de pago." CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label for="comentarios">Comentarios:</label>
                    <asp:TextBox ID="txtComentarios" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4"></asp:TextBox>
                </div>
                <p style="color:#6b6b6b; font-size:12px">(*) son obligatorios</p>
                <div class="form-group">
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" CssClass="btn btn-primary" />
                </div>
                <div class="form-group">
                    <asp:HyperLink ID="lnkDescargar" runat="server" Text="Descargar Resumen de Compra" CssClass="btn btn-secondary" Visible="false"></asp:HyperLink>
                </div>
            </asp:Panel>
        </div>
    </main>
</asp:Content>
