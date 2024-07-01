using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Web.UI;

namespace Vivero
{
    public partial class ProductosMacetas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string productId = Request.QueryString["productId"];
                if (!string.IsNullOrEmpty(productId))
                {
                    // Guardar el productId original en ViewState
                    ViewState["OriginalProductId"] = productId;
                    // Actualizar los detalles del producto basados en el tamaño seleccionado
                    UpdateProductDetails(productId);
                }
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el productId original y ajustarlo según el tamaño seleccionado
            string originalProductId = ViewState["OriginalProductId"].ToString();
            string productId = AdjustProductIdBasedOnSize(originalProductId, DropDownList2.SelectedValue);
            // Actualizar los detalles del producto con el nuevo productId
            UpdateProductDetails(productId);
        }

        private void UpdateProductDetails(string productId)
        {
            DataTable productDetails = GetProductDetails(productId);
            if (productDetails != null && productDetails.Rows.Count > 0)
            {
                DataRow product = productDetails.Rows[0];
                prod.InnerText = product["Nombre"].ToString();
                desc.InnerText = product["Descripcion"].ToString();
                urlp.Src = product["img"].ToString();

                decimal precioProducto;
                if (decimal.TryParse(product["PRECIO"].ToString(), out precioProducto))
                {
                    precio.InnerText = "$" + precioProducto.ToString();
                    Session["PrecioProducto"] = precioProducto;
                }
                else
                {
                    precio.InnerText = "Precio no disponible";
                }

                ViewState["ProductId"] = productId;
            }
        }

        private string AdjustProductIdBasedOnSize(string originalProductId, string size)
        {
            if (originalProductId == "18")
            {
                switch (size)
                {
                    case "chico":
                        return "18";
                    case "mediano":
                        return "30";
                    case "grande":
                        return "31";
                }
            }
            if (originalProductId == "19")
            {
                switch (size)
                {
                    case "chico":
                        return "19";
                    case "mediano":
                        return "32";
                    case "grande":
                        return "33";
                }
            }
            if (originalProductId == "20")
            {
                switch (size)
                {
                    case "chico":
                        return "20";
                    case "mediano":
                        return "34";
                    case "grande":
                        return "35";
                }
            }

            if (originalProductId == "22")
            {
                switch (size)
                {
                    case "chico":
                        return "22";
                    case "mediano":
                        return "36";
                    case "grande":
                        return "37";
                }
            }
            return originalProductId;
        }

        protected void AgregarAlCarrito_Click(object sender, EventArgs e)
        {
            string productId = ViewState["ProductId"].ToString();
            decimal precioProducto = (decimal)Session["PrecioProducto"];
            int cantidadDisponible = ObtenerCantidadDisponibleDesdeBD(productId);

            string producto = prod.InnerText;
            int cantidad = Convert.ToInt32(ddlCantidad.SelectedValue);

            if (cantidad > cantidadDisponible)
            {
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

            productosEnCarrito.Add(producto);
            cantidadesEnCarrito.Add(cantidad);
            decimal precioTotal = precioProducto * cantidad;
            preciosEnCarrito.Add(precioTotal);

            Session["ProductosEnCarrito"] = productosEnCarrito;
            Session["CantidadesEnCarrito"] = cantidadesEnCarrito;
            Session["PreciosEnCarrito"] = preciosEnCarrito;

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
