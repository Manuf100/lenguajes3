<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Semillas.aspx.cs" Inherits="Vivero.Semillas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/semillas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="15">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s1.png" height="420" width="327"/>
                    </div><br /><br /><br /><br /><br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>SEMILLAS DE HIERBAS PARA GATOS Y PERROS 100g</h1>
                            </div>
                        <br /><br />
                        <div class="product-price-btn">
                       
                            <p><span class="precio">$2600</span></p>
                                 
                            <button type="button" style="width: 214px" onclick="redirectToProductos('15')">MAS INFORMACIÓN</button>

                        </div>
                    </div>
                </div>
                <div class="product-card" id="16">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s2.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>Semillas para césped, resiembra otoño - invierno- Rye Grass Anual</h1>
                            
                        </div>
                        <br /><br />
                        <div class="product-price-btn">
                            <p><span class="precio">$5900</span></p>
                            
                            <button type="button" style="width: 214px" onclick="redirectToProductos('16')">MAS INFORMACIÓN</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="17">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s3.png" height="420" width="327"/>
                    </div>
                    <br /><br />
                    <div class="product-info">
                        <div class="product-text">
                            <h1>SEMILLAS DE CÉSPED EXCEL PICASSO</h1>
                           
                        </div>
                        <br /><br /><br />
                        <div class="product-price-btn">
                            <p><span class="precio">$11000</span></p>
                            
                            <button type="button" style="width: 214px" onclick="redirectToProductos('17')">MAS INFORMACIÓN</button>
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
