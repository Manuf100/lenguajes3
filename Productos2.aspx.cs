using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;

namespace Vivero
{
    public partial class Productos2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Puedes inicializar aquí cualquier lógica adicional que necesites al cargar la página por primera vez.
            }
        }

        protected void Buscar_Click(object sender, EventArgs e)
        {
            string nombreProducto = txtBuscarProducto.Text.Trim();

            if (!string.IsNullOrEmpty(nombreProducto))
            {
                DataTable productDetails = GetProductDetails(nombreProducto);

                if (productDetails != null && productDetails.Rows.Count > 0)
                {
                    DataRow product = productDetails.Rows[0];
                    prod.InnerText = product["Nombre"].ToString();
                    desc.InnerText = product["Descripcion"].ToString();
                    urlp.Src = product["img"].ToString();

                    // Obtener el precio y convertirlo a decimal
                    decimal precioProducto;
                    if (decimal.TryParse(product["PRECIO"].ToString(), out precioProducto))
                    {
                        precio.InnerText = "$" + precioProducto.ToString();
                        Session["PrecioProducto"] = precioProducto; // Guardar el precio en la sesión
                    }
                    else
                    {
                        precio.InnerText = "Precio no disponible";
                    }

                    // Mostrar el detalle del producto y el formulario de agregar al carrito
                    productoDetalle.Visible = true;
                    lblMensajeError.Visible = false; // Asegurar que el mensaje de error esté oculto si se encontró el producto
                }
                else
                {
                    // Mostrar mensaje de error si el producto no fue encontrado
                    lblMensajeError.Text = "Producto no encontrado";
                    lblMensajeError.Visible = true;
                    productoDetalle.Visible = false;
                }
            }
            else
            {
                // Mostrar mensaje de error si no se ingresó un nombre de producto
                lblMensajeError.Text = "Ingrese un nombre de producto";
                lblMensajeError.Visible = true;
                productoDetalle.Visible = false;
            }
        }

        protected void AgregarAlCarrito_Click(object sender, EventArgs e)
        {
            // Aquí se maneja la lógica para agregar el producto al carrito de compra
            string nombreProducto = prod.InnerText;
            int cantidad = Convert.ToInt32(ddlCantidad.SelectedValue);

            // Obtener el precio almacenado en la sesión
            decimal precio = (decimal)Session["PrecioProducto"];

            // Obtener la cantidad disponible del producto desde la base de datos
            string productId = ObtenerProductIdDesdeBD(nombreProducto);
            int cantidadDisponible = ObtenerCantidadDisponibleDesdeBD(productId);

            // Verificar si hay suficiente cantidad disponible para agregar al carrito
            if (cantidad > cantidadDisponible)
            {
                // Mostrar mensaje de error
                lblMensajeError.Text = "La cantidad solicitada excede la cantidad disponible";
                lblMensajeError.Visible = true;
                return;
            }

            List<string> productosEnCarrito = Session["ProductosEnCarrito"] as List<string>;
            List<int> cantidadesEnCarrito = Session["CantidadesEnCarrito"] as List<int>;
            List<decimal> preciosEnCarrito = Session["PreciosEnCarrito"] as List<decimal>;

            if (productosEnCarrito == null)
            {
                productosEnCarrito = new List<string>();
                cantidadesEnCarrito = new List<int>();
                preciosEnCarrito = new List<decimal>();
            }

            // Agregar el producto, la cantidad y el precio al carrito
            productosEnCarrito.Add(nombreProducto);
            cantidadesEnCarrito.Add(cantidad);

            // Calcula el precio total (precio por cantidad)
            decimal precioTotal = precio * cantidad;
            preciosEnCarrito.Add(precioTotal);

            // Actualizar la sesión con la lista de productos, cantidades y precios en el carrito
            Session["ProductosEnCarrito"] = productosEnCarrito;
            Session["CantidadesEnCarrito"] = cantidadesEnCarrito;
            Session["PreciosEnCarrito"] = preciosEnCarrito;

            // Redireccionar a la página de compras
            Response.Redirect("Compra.aspx");
        }

        private string ObtenerProductIdDesdeBD(string nombreProducto)
        {
            string productId = "";
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AccessDBConnection"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "SELECT Id FROM PRODUCTOS WHERE Nombre = @Nombre";
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombreProducto);
                    connection.Open();
                    object result = command.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        productId = result.ToString();
                    }
                }
            }
            return productId;
        }

        private int ObtenerCantidadDisponibleDesdeBD(string productId)
        {
            int cantidadDisponible = 0;
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AccessDBConnection"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "SELECT Cantidad FROM PRODUCTOS WHERE Id = @ProductId";
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductId", productId);
                    connection.Open();
                    object result = command.ExecuteScalar();
                    if (result != null && result != DBNull.Value)
                    {
                        cantidadDisponible = Convert.ToInt32(result);
                    }
                }
            }
            return cantidadDisponible;
        }

        private DataTable GetProductDetails(string nombreProducto)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AccessDBConnection"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "SELECT * FROM PRODUCTOS WHERE Nombre = @Nombre";
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", nombreProducto);
                    OleDbDataAdapter adapter = new OleDbDataAdapter(command);
                    DataTable productTable = new DataTable();
                    adapter.Fill(productTable);
                    return productTable;
                }
            }
        }
    }
}
