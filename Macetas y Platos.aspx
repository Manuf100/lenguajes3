<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Macetas y Platos.aspx.cs" Inherits="Vivero.Macetas_y_Platos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/macetas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
                <div class="product-card" id="m-uno">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m1.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>COMÚN TERRACOTA</h1>
                            <p>medidas abajo.</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$570</span></p>
                            <select name="maceta" id="maceta">
                                            <option value="n4">n4</option>
                                            <option value="n16">n16</option>
                                            <option value="n26">n26</option>
                                            <option value="n52">n52</option>
                                      </select>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cm1">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                             <button type="button" style="width: 214px">Buy Now</button>
                            
                        </div>
                    </div>
                </div>
                <div class="product-card" id="m-dos">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m2.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>PLATOS REDONDOS DE TERRACOTA</h1>
                            <p>Medidas abajo</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$780</span></p>
                                        <select name="plato" id="plato">
                                            <option value="n8">n8</option>
                                            <option value="n16">n16</option>
                                            <option value="n26">n26</option>
                                            <option value="n52">n52</option>
                                      </select>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cm2">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="m-tres">
                    <div class="product-img">
                        <img class="productImage" src="IMAGENES\m3.png" height="420" width="327"/>
                    </div>
                    <div class="product-info">
                        <div class="product-text">
                            <h1>CUBO FIBROCEMENTO</h1>
                            <p>Medida 60*60*60. 56kg, 216l.</p>
                        </div>
                        <div class="product-price-btn">
                            <p><span class="precio">$4500</span></p>
                            <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cm3">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                            <button type="button" style="width: 214px">Buy Now</button>
                        </div>
                    </div>
                </div>
                <div class="product-card" id="m-cuatro">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\m4.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>MACETA PARA BARANDA TERRACOTA</h1>
                                <p>Alto:20 cm. Boca: 24,5 cm. Para barandas con un diámetrop máximo de 7 cm</p>
                            </div>
                            <div class="product-price-btn">
                                <p><span class="precio">$9900</span></p>
                                <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cm4">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                                <button type="button" style="width: 214px">Buy Now</button>
                            </div>
                        </div>
                    </div>
                <div class="product-card" id="m-cinco">
                        <div class="product-img">
                            <img class="productImage" src="IMAGENES\M5.png" height="420" width="327"/>
                        </div>
                        <div class="product-info">
                            <div class="product-text">
                                <h1>CONO TERRACOTA</h1>
                                <p>Medidas abjao</p>
                            </div>
                            <div class="product-price-btn">
                                <p><span class="precio">$5500</span></p>
                                            <select name="CONO" id="CONO">
                                                <option value="n31">n31</option>
                                                <option value="n40">n40</option>
                                                <option value="n48">n48</option>
                                                <option value="n55">n55</option>
                                          </select>
                                <p style="font-size:12px">CANTIDAD:</p><select name="cantidad" id="cm5">
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
        <div>
            <h5>MACETA COMÚN TERRACOTA</h5><br />
            <img src="IMAGENES/tabla%20medidas.bmp" /><br />
            <h5>PLATOS REDONDOS DE TERRACOTA</h5><br />
            <img  src="IMAGENES/tavbla.bmp" /><br />
            <h5>CONO TERRACOTA</h5><br />
            <img  src="IMAGENES/tabla9.bmp" />
        </div>
    </main>
</asp:Content>
