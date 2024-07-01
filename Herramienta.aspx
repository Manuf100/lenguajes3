<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Herramienta.aspx.cs" Inherits="Vivero.Herramienta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Herramienta.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="23">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h1.png" height="150" width="327"/>
                    </div><br /><br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>PALA DE MANO ANCHA (METAL) TRAMONTINA</h1>
                            </div><br />
                        <div class="product-price-btn">
                            <p><span class="precio">$4200</span></p>
                             <button type="button" style="width: 214px" onclick="redirectToProductos('23')">MAS INFORMACIÓN</button>
                            
                        </div>
                    </div>
                </div>
                <div class="product-card" id="24">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h2.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>TIJERA DE PODA 8´</h1>
                            </div><br /><br /><br />
                        <div class="product-price-btn">
                            <p><span class="precio">$15000</span></p>
                            <button type="button" style="width: 214px" onclick="redirectToProductos('24')">MAS INFORMACIÓN</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="25">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h3.png" height="420" width="327"/>
                    </div><br /><br /><br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>REGADERAS PLÁSTICAS VERDE</h1>
                            </div><br /><br />
                        <div class="product-price-btn">
                            <p><span class="precio">$4600</span></p>
                            <button type="button" style="width: 214px" onclick="redirectToProductos('25')">MAS INFORMACIÓN</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="26">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\h4.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>CONECTOR PARA CANILLA (AQUAFLEX )</h1>
                               </div><br />
                            <div class="product-price-btn">
                                <p><span class="precio">$2000</span></p>
                                
                                <button type="button" style="width: 214px" onclick="redirectToProductos('26')">MAS INFORMACIÓN</button>
                            </div>
                        </div>
                    </div>
                <div class="product-card" id="27">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\h5.png" height="420" width="327"/>
                        </div><br /><br /><br /><br /><br /><br />
                        <div class="product-info">
                            <div class="product-text">
                                <h1>GUANTE CUERINA</h1>
                                 </div><br />
                            <div class="product-price-btn">
                                <p><span class="precio">$9700</span></p>
                                
                                <button type="button" style="width: 214px" onclick="redirectToProductos('27')">MAS INFORMACIÓN</button>
                            </div>
                        </div>
                    </div>
            <div class="product-card" id="29">
                            <div class="product-img">
                                <img class="productImage" src="IMAGENES\h7.png" height="420" width="327"/>
                            </div><br /><br /><br /><br /><br /><br />
                            <div class="product-info">
                                <div class="product-text">
                                    <h1>ESCOBILLA BARREHOJAS</h1>
                                    </div><br />
                                <div class="product-price-btn">
                                    <p><span class="precio">$4300</span></p>

                                    <button type="button" style="width: 214px" onclick="redirectToProductos('29')">MAS INFORMACIÓN</button>
                                </div>
                            </div>
                        </div>
                <div class="product-card" id="28">
                            <div class="product-img">
                                <img class="productImage" src="IMAGENES\h6.png" height="150" width="327"/>
                            </div>
                            <div class="product-info">
                                <div class="product-text">
                                    <h1>PALA PEQUEÑA DE PUNTA, 45 CM. TRAMONTINA</h1>
                                    </div><br />
                                <div class="product-price-btn">
                                    <p><span class="precio">$16000</span></p>
                                    
                                    <button type="button" style="width: 214px" onclick="redirectToProductos('28')">MAS INFORMACIÓN</button>
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
