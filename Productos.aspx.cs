using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;

namespace Vivero
{
    public partial class Productos : System.Web.UI.Page
    {
        decimal precioProducto;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productId = Request.QueryString["productId"];
                if (!string.IsNullOrEmpty(productId))
                {
                    DataTable productDetails = GetProductDetails(productId);
                    if (productDetails != null && productDetails.Rows.Count > 0)
                    {
                        DataRow product = productDetails.Rows[0];
                        prod.InnerText = product["Nombre"].ToString();
                        desc.InnerText = product["Descripcion"].ToString();
                        urlp.Src = product["img"].ToString();

                        // Obtener el precio y convertirlo a decimal
                        if (decimal.TryParse(product["PRECIO"].ToString(), out precioProducto))
                        {
                            // Asignar el precio convertido a precioProducto
                            precio.InnerText = "$" + precioProducto.ToString();

                            // Guardar el precio en la sesión
                            Session["PrecioProducto"] = precioProducto;
                        }
                        else
                        {
                            // Si no se puede convertir a decimal, mostrar un mensaje de error
                            precio.InnerText = "Precio no disponible";
                        }
                    }
                }
            }
        }

        protected void AgregarAlCarrito_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["productId"];
            string producto = prod.InnerText;
            int cantidad = Convert.ToInt32(ddlCantidad.SelectedValue);

            // Obtener el precio almacenado en la sesión
            decimal precio = (decimal)Session["PrecioProducto"];

            // Obtener la cantidad disponible del producto desde la base de datos
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
            productosEnCarrito.Add(producto);
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

        private DataTable GetProductDetails(string productId)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["AccessDBConnection"].ConnectionString;
            using (OleDbConnection connection = new OleDbConnection(connectionString))
            {
                string query = "SELECT * FROM PRODUCTOS WHERE Id = @ProductId";
                using (OleDbCommand command = new OleDbCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@ProductId", productId);
                    OleDbDataAdapter adapter = new OleDbDataAdapter(command);
                    DataTable productTable = new DataTable();
                    adapter.Fill(productTable);
                    return productTable;
                }
            }
        }
    }
}
