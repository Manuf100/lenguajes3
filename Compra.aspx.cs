using System;
using System.Collections.Generic;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

namespace Vivero
{
    public partial class Compra : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MostrarCarrito();
            }
        }

        private void MostrarCarrito()
        {
            carrito.Controls.Clear();

            List<string> productosEnCarrito = Session["ProductosEnCarrito"] as List<string>;
            List<int> cantidadesEnCarrito = Session["CantidadesEnCarrito"] as List<int>;
            List<decimal> preciosEnCarrito = Session["PreciosEnCarrito"] as List<decimal>;

            if (productosEnCarrito != null && cantidadesEnCarrito != null && preciosEnCarrito != null)
            {
                decimal total = 0;
                for (int i = 0; i < productosEnCarrito.Count; i++)
                {
                    string producto = productosEnCarrito[i];
                    int cantidad = cantidadesEnCarrito[i];
                    decimal precioTotal = preciosEnCarrito[i];

                    total += precioTotal;

                    LiteralControl productoControl = new LiteralControl();
                    productoControl.Text = $"<p>- {producto} - Cantidad: {cantidad} - Precio Total: ${precioTotal}</p>";

                    carrito.Controls.Add(productoControl);
                    carrito.Controls.Add(new LiteralControl("<br/>"));
                }
                lblTotal.Text = $"Total de la compra: $<u>{total}</u>";
            }
            else
            {
                lblTotal.Text = "El carrito está vacío.";
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string email = txtEmail.Text;
            string direccion = txtDireccion.Text;
            string numero = txtNumero.Text;
            string ciudad = txtCiudad.Text;
            string provincia = txtProvincia.Text;
            string pais = txtPais.Text;
            string codigoPostal = txtCodigoPostal.Text;
            string medioPago = ddlMedioPago.SelectedValue;
            string comentarios = txtComentarios.Text;

            string connectionString = ConfigurationManager.ConnectionStrings["AccessDBConnection"].ConnectionString;

            try
            {
                using (OleDbConnection connection = new OleDbConnection(connectionString))
                {
                    connection.Open();
                    OleDbTransaction transaction = connection.BeginTransaction();

                    try
                    {
                        // Insertar datos del usuario
                        string queryUsuario = "INSERT INTO Usuarios (Nombre, Apellido, Email, Direccion, Numero, Ciudad, Provincia, Pais, CodigoPostal, MedioPago, Comentarios) " +
                            "VALUES (@Nombre, @Apellido, @Email, @Direccion, @Numero, @Ciudad, @Provincia, @Pais, @CodigoPostal, @MedioPago, @Comentarios)";
                        using (OleDbCommand commandUsuario = new OleDbCommand(queryUsuario, connection, transaction))
                        {
                            commandUsuario.Parameters.AddWithValue("@Nombre", nombre);
                            commandUsuario.Parameters.AddWithValue("@Apellido", apellido);
                            commandUsuario.Parameters.AddWithValue("@Email", email);
                            commandUsuario.Parameters.AddWithValue("@Direccion", direccion);
                            commandUsuario.Parameters.AddWithValue("@Numero", numero);
                            commandUsuario.Parameters.AddWithValue("@Ciudad", ciudad);
                            commandUsuario.Parameters.AddWithValue("@Provincia", provincia);
                            commandUsuario.Parameters.AddWithValue("@Pais", pais);
                            commandUsuario.Parameters.AddWithValue("@CodigoPostal", codigoPostal);
                            commandUsuario.Parameters.AddWithValue("@MedioPago", medioPago);
                            commandUsuario.Parameters.AddWithValue("@Comentarios", comentarios);

                            commandUsuario.ExecuteNonQuery();
                        }

                        // Descontar la cantidad de productos
                        List<string> productosEnCarrito = Session["ProductosEnCarrito"] as List<string>;
                        List<int> cantidadesEnCarrito = Session["CantidadesEnCarrito"] as List<int>;

                        if (productosEnCarrito != null && cantidadesEnCarrito != null)
                        {
                            for (int i = 0; i < productosEnCarrito.Count; i++)
                            {
                                string producto = productosEnCarrito[i];
                                int cantidad = cantidadesEnCarrito[i];

                                string queryProducto = "UPDATE PRODUCTOS SET Cantidad = Cantidad - @Cantidad WHERE Nombre = @Producto";
                                using (OleDbCommand commandProducto = new OleDbCommand(queryProducto, connection, transaction))
                                {
                                    commandProducto.Parameters.AddWithValue("@Cantidad", cantidad);
                                    commandProducto.Parameters.AddWithValue("@Producto", producto);

                                    commandProducto.ExecuteNonQuery();
                                }
                            }
                        }

                        transaction.Commit();

                        // Generar resumen de compra después de que la transacción ha sido confirmada
                        string resumen = GenerarResumenDeCompra(nombre, apellido, email, direccion, numero, ciudad, provincia, pais, codigoPostal, medioPago, comentarios, productosEnCarrito, cantidadesEnCarrito);
                        string filePath = GuardarResumenEnArchivo(resumen);

                        // Abrir el archivo en una nueva ventana y redirigir la página principal
                        string script = $"window.open('{filePath}', '_blank'); window.location='ProcesarFormulario.aspx';";
                        ClientScript.RegisterStartupScript(this.GetType(), "OpenFileAndRedirect", script, true);

                        // Limpiar el carrito después de confirmar la compra
                        Session["ProductosEnCarrito"] = null;
                        Session["CantidadesEnCarrito"] = null;
                        Session["PreciosEnCarrito"] = null;
                    }
                    catch (Exception ex)
                    {
                        transaction.Rollback();
                        throw ex;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Error: " + ex.Message.Replace("'", "\\'") + "');", true);
            }
        }

        private string GenerarResumenDeCompra(string nombre, string apellido, string email, string direccion, string numero, string ciudad, string provincia, string pais, string codigoPostal, string medioPago, string comentarios, List<string> productos, List<int> cantidades)
        {
            string resumen = "Resumen de Compra:\n\n";
            resumen += $"Nombre: {nombre}\n";
            resumen += $"Apellido: {apellido}\n";
            resumen += $"Email: {email}\n";
            resumen += $"Dirección: {direccion}, {numero}\n";
            resumen += $"Ciudad: {ciudad}\n";
            resumen += $"Provincia: {provincia}\n";
            resumen += $"País: {pais}\n";
            resumen += $"Código Postal: {codigoPostal}\n";
            resumen += $"Medio de Pago: {medioPago}\n";
            resumen += $"Comentarios: {comentarios}\n\n";
            resumen += "Productos:\n";

            for (int i = 0; i < productos.Count; i++)
            {
                resumen += $"{productos[i]} - Cantidad: {cantidades[i]}\n";
            }

            return resumen;
        }

        private string GuardarResumenEnArchivo(string resumen)
        {
            string directoryPath = Server.MapPath("~/txt/");
            if (!Directory.Exists(directoryPath))
            {
                Directory.CreateDirectory(directoryPath);
            }
            string filePath = Path.Combine(directoryPath, "ResumenDeCompra.txt");
            File.WriteAllText(filePath, resumen);
            return ResolveUrl("~/txt/ResumenDeCompra.txt");
        }
    }
}
