<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Semillas.aspx.cs" Inherits="Vivero.Semillas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/semillas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="s-uno">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s1.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>SEMILLAS DE HIERBAS PARA GATOS Y PERROS 100g</h1>
                            <p>Semillas de pasto  que aportan nutrientes a la alimentación de perros y gatos, ayudando a la función digestiva, y a la eliminación de pelos del aparato digestivo.<br />Contiene semillas de Hordeum vulgare (Cebada), Avena sativa (Avena), Tritucum vulgare (Trigo), Lolium multiflorum y Lolium perenne (Ray Grass).<br />Densidad de siembra recomendada. 50 g/m²</p>
                        </div>
                        <div class="product-price-btn">
                       
                            <p><span class="precio">$2600</span></p>
                                 <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cs1">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>

                        </div>
                    </div>
                </div>
                <div class="product-card" id="s-dos">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s2.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>Semillas para césped, resiembra otoño - invierno- Rye Grass Anual</h1>
                            <p>Presentación por 1 kg (rinde entre 30 y 40 m²)</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$5900</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cs2">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="s-tres">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\s3.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>SEMILLAS DE CÉSPED EXCEL PICASSO</h1>
                            <p>Presentación por 1 KG. Cubre aproximadamente 30 m².</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$11000</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cs3">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
            </div>
    </main>
    
</asp:Content>
