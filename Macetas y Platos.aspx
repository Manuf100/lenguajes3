<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Macetas y Platos.aspx.cs" Inherits="Vivero.Macetas_y_Platos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/macetas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="18">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m1.png" height="420" width="327"/>
                    </div>
                    <br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>COMÚN TERRACOTA</h1>
                            
                        </div>
                        <br />
                        <div class="product-price-btn">
                            <p><span class="precio">$2000</span></p>
                            
                             <button type="button" style="width: 214px" onclick="redirectToProductos('18')">MAS INFORMACIÓN</button>
                            
                        </div>
                    </div>
                </div>
            <div class="product-card" id="22">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\M5.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>CONO TERRACOTA</h1>
                                
                            </div>
                            <br />
                            <div class="product-price-btn">
                                <p><span class="precio">$5500</span></p>
                                           
                                
                               <button type="button" style="width: 214px" onclick="redirectToProductos('22')">MAS INFORMACIÓN</button>
                            </div>
                        </div>
                    </div>
                
                <div class="product-card" id="20">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m3.png" height="420" width="327"/>
                    </div>
                    <br /><br /><br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>CUBO FIBROCEMENTO</h1>
                            
                        </div>
                        <br />
                        <div class="product-price-btn">
                            <p><span class="precio">$4500</span></p>
                             
                            <button type="button" style="width: 214px" onclick="redirectToProductos('20')">MAS INFORMACIÓN</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="21">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\m4.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>MACETA PARA BARANDA TERRACOTA</h1>
                                </div>
                            <br />
                            <div class="product-price-btn">
                                <p><span class="precio">$9900</span></p>
                                
                                <button type="button" style="width: 214px" onclick="redirectToProductos2('21')">MAS INFORMACIÓN</button>
                            </div>
                        </div>
                    </div>
                <div class="product-card" id="19">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m2.png" height="420" width="327"/>
                    </div>
                    <br /><br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>PLATOS REDONDOS DE TERRACOTA</h1>
                            
                        </div>
                        <br />
                        <div class="product-price-btn">
                            <p><span class="precio">$2500</span></p>
                                        
                            <button type="button" style="width: 214px" onclick="redirectToProductos('19')">MAS INFORMACIÓN</button>
                        </div>
                    </div>
                </div>
                </div>
        <!--<div>
            <h5>MACETA COMÚN TERRACOTA</h5><br />
            <img src="IMAGENES/tabla%20medidas.bmp" /><br />
            <h5>PLATOS REDONDOS DE TERRACOTA</h5><br />
            <img  src="IMAGENES/tavbla.bmp" /><br />
            <h5>CONO TERRACOTA</h5><br />
            <img  src="IMAGENES/tabla9.bmp" />
        </div>-->
    </main>
        <script>
    function redirectToProductos(productId) {
        window.location.href = 'ProductosMacetas.aspx?productId=' + productId;
            }
            function redirectToProductos2(productId) {
                window.location.href = 'Productos.aspx?productId=' + productId;
            }
        </script>
</asp:Content>
