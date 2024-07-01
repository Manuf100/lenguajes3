<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plantas.aspx.cs" Inherits="Vivero.Plantas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/plantas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
            <div class="product-card" id="1">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES/Captura%20de%20pantalla%202024-05-17%20103704.jpg" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ALEGRÍAS DEL HOGAR</h1>
                     </div>
                    <div class="product-price-btn">
                        
                        <p><span class="precio">$780</span></p>
                        <button type="button" style="width: 214px" onclick="redirectToProductos('1')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="2">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES/Captura%20de%20pantalla%202024-05-19%20141616.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>LAVANDA DENTATA</h1>
                        </div><br />
                    <div class="product-price-btn">
                        <p><span class="precio">$2400</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('2')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="3">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f3.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>VIOLETA DE LOS ALPES</h1>
                         </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$5300</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('3')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="4">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f4.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ERICA</h1>
                       </div><br />
                    <div class="product-price-btn">
                        <p><span class="precio">$980</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('4')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="5">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f5.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>CALÉNDULA</h1>
                       </div><br />
                    <div class="product-price-btn">
                        <p><span class="precio">$790</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('5')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="13">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f6.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>SALVIAS PARA COLIBRÍES</h1>
                        </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$2400</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('13')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="14">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f7.png" height="327" width="420"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ROSA MINIATURA</h1>
                        </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$3900</span></p>
                        
                        <button type="button" style="width: 214px" onclick="redirectToProductos('14')">MAS INFORMACIÓN</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <script>
    function redirectToProductos(productId) {
        window.location.href = 'Productos.aspx?productId=' + productId;
    }
    </script>

</asp:Content>
