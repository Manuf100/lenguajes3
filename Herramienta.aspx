<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Herramienta.aspx.cs" Inherits="Vivero.Herramienta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Herramienta.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="h-uno">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h1.png" height="150" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>PALA DE MANO ANCHA (METAL) TRAMONTINA</h1>
                            <p><b>Pala ancha con mango de madera, fabricada en acero carbono especial de alta calidad.</b><br />Pensanda para quienes disfrutan del trabajo de la tierra y cuidado las plantas.<br />Es una pieza práctica y de gran utilidad para excavar, retirar y transportar la tierra.</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$4200</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch1">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                             <button type="button" style="width: 214px">Buy Now</button>
                            
                        </div>
                    </div>
                </div>
                <div class="product-card" id="h-dos">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h2.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>TIJERA DE PODA 8´</h1>
                            <p><b>Tijera de poda hecha en acero forjado.<br />Cuchilla de excelente calidad, durabilidad y resistente a cortes duros.<br /></b>Mango antideslizante para mayor comodidad de agarre.<br /> resorte de acero y traba de seguridad. Mide 20 cm de largo.</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$15000</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch2">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="h-tres">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\h3.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>REGADERAS PLÁSTICAS VERDE</h1>
                            <p>Es un producto fuerte y práctico. Posee un diseño exclusivo, con pico rociador e incluye una flor de riego.<br />2 litros.</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$4600</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch3">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="h-cuatro">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\h4.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>CONECTOR PARA CANILLA (AQUAFLEX )</h1>
                                <p>Para canilla de 3/4"<br />INSTRUCCIONES<br />Enchufe plástico para canilla, con el sistema de acople rápido o quick coupling.<br />Es una pieza necesaria para el sistema de riego por goteo o para conectar mangueras de riego de 1/2", va ubicado entre la canilla y el acople rápido. </p>
                            </div>
                            <div class="product-price-btn">
                                <p><span class="precio">$2000</span></p>
                                <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch4">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                                <button type="button" style="width: 214px">Buy Now</button>
                            </div>
                        </div>
                    </div>
                <div class="product-card" id="h-cinco">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\h5.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>GUANTE CUERINA</h1>
                                <p>Par de Guantes de cuerina ideal para cactus.<br />Impermeable. <br />Tamaño universal.</p>
                            </div>
                            <div class="product-price-btn">
                                <p><span class="precio">$9700</span></p>
                                <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch5">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                                <button type="button" style="width: 214px">Buy Now</button>
                            </div>
                        </div>
                    </div>
                <div class="product-card" id="h-seis">
                            <div class="product-img">
                                <img class="productImage" src="IMAGENES\h6.png" height="150" width="327"/>
                            </div>
                            <div class="product-info">
                                <div class="product-text">
                                    <h1>PALA PEQUEÑA DE PUNTA, 45 CM. TRAMONTINA</h1>
                                    <p>Ideal para trabajos de jardinería en canteros y macetas.<br /> mango es de plástico color negro, el cabo de madera y la pala de hierro color negro.<br />Largo total: 63 cm<br />Largo del mago: 45 cm.<br />Tamaño de la pala: (largo: 20,5 cm y ancho: 15 cm)<br />Tamaño del mango: (largo: 17 cm, ancho: 11 cm)</p>
                                </div>
                                <div class="product-price-btn">
                                    <p><span class="precio">$16000</span></p>
                                    <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch6">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                                    <button type="button" style="width: 214px">Buy Now</button>
                                </div>
                            </div>
                        </div>
            <div class="product-card" id="h-siete">
                            <div class="product-img">
                                <img class="productImage" src="IMAGENES\h7.png" height="420" width="327"/>
                            </div>
                            <div class="product-info">
                                <div class="product-text">
                                    <h1>ESCOBILLA BARREHOJAS</h1>
                                    <p>Escobilla Barrehojas<br />Material: Plástico<br />Medida chico: 43cm x 22cm<br />Medidas Cabo: 120 cm largo x 2 cm. diámetro</p>
                                </div>
                                <div class="product-price-btn">
                                    <p><span class="precio">$4300</span></p>
                                    <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="ch7">
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
