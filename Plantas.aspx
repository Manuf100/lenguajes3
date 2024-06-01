<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Plantas.aspx.cs" Inherits="Vivero.Plantas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/plantas.css" rel="stylesheet" />
    <main>
        <div class="wrapper">
            <div class="product-card" id="uno">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES/Captura%20de%20pantalla%202024-05-17%20103704.jpg" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ALEGRÍAS DEL HOGAR</h1>
                        <p><b>UBICACIÓN:</b> Exterior a media sombra.<br /> <b>FLORACIÓN:</b> Todo el año en lugares protegidos, con más intensidad en Primavera-Verano.<br /> <b>OBSERVACIONES:</b> Forma matas globosas. Se puede podar a fin del Invierno dejando tallos de 5 cm para que rebrote. Se comporta como perenne en lugares cálidos. No soporta heladas ni lugares ventosos. Cuidar del encharcamiento en el sustrato.</p>
                    </div>
                    <div class="product-price-btn">
                        
                        <p><span class="precio">$78</span></p>
                               <select name="cantidad" id="cf1">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    
                    </div>
                </div>
            </div>
            <div class="product-card" id="dos">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES/Captura%20de%20pantalla%202024-05-19%20141616.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>LAVANDA DENTATA</h1>
                        <p><b>UBICACIÓN:</b> Exterior a pleno sol.<br /> <b>FLORACIÓN:</b> Todo el año, por ciclos. Flores en espigas perfumadas que atraen abejas.<br /> <b>OBSERVACIONES:</b> Arbusto bajo y muy ramificado con follaje verde grisáceo. Originaria de lugares secos, necesita sol (de 4 hs en adelante), y riego moderado. Tolera el viento. Podar luego de la floración un tercio de los tallos para que rebrote desde la base.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$2400</span></p>
                        <select name="cantidad" id="cf2">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="tres">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f3.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>VIOLETA DE LOS ALPES</h1>
                        <p><b>UBICACIÓN:</b> Exterior a media sombra. Cuanto más baja es la temperatura más resisten el sol pleno.<br /> <b>FLORACIÓN:</b> En Invierno y Primavera, hasta que empieza el calor, flores en la gama del rojo, rosa, y blanco que salen del centro de la planta.<br /> <b>OBSERVACIONES:</b> Plantas bulbosas que forman una mata con hojas acorazonadas. Brotan en Otoño y florecen en Invierno y Primavera. En Verano entran en dormición y pierden gran parte del follaje, se pueden conservar de un año al otro dejándolas en la sombra y regándolas esporádicamente. El riego debe ser con agua a temperatura ambiente, no hace falta colocarles hielo.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$5300</span></p>
                        <select name="cantidad" id="cf3">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="cuatro">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f4.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ERICA</h1>
                        <p><b>UBICACIÓN:</b>  Exterior a pleno sol, o media sombra.<br /> <b>FLORACIÓN:</b> odo el año con más intensidad en Primavera-Verano. Pequeñas flores blancas o rosadas que atraen abejas.<br /> <b>OBSERVACIONES:</b> Forma matas bajas de follaje perenne. Tolera viento y riego moderado. Se puede podar a fin del Invierno para dar forma.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$980</span></p>
                        <select name="cantidad" id="cf4">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="cinco">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f5.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>CALÉNDULA</h1>
                        <p><b>UBICACIÓN:</b> Exterior a pleno sol.<br /> <b>FLORACIÓN:</b> Primavera, Verano, y Otoño. Hay variedades de flor naranja y amarilla.<br /> <b>OBSERVACIONES:</b> Plantin estacional. Forma matas bajas que crecen hacia los costados. Se utiliza en huertas orgánicas porque atrae insectos benéficos. Tiene propiedades curativas.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$790</span></p>
                        <select name="cantidad" id="cf5">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="seis">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f6.png" height="420" width="327"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>SALVIAS PARA COLIBRÍES</h1>
                        <p><b>UBICACIÓN:</b> Exterior a pleno sol, o media sombra.<br /> <b>FLORACIÓN:</b> De Primavera a Otoño, espigas de hasta 30 cm con flores bilabiadas de color azul (S. guaranitica), violeta (S. ‘Amistad’), o fucsia (S. ‘Jazu´s Wish’, S. 'Joan'). Son un imán para los colibríes, por su abundante cantidad de néctar y abundante floración.<br /> <b>OBSERVACIONES:</b>  Herbáceas perennes de hasta 1,5 m de alto aproximadamente, que rebrotan desde la base. Atraen colibríes, mariposas y abejas. Se pueden podar casi hasta el ras a fin del Invierno para estimular la renovación del follaje.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$2400</span></p>
                        <select name="cantidad" id="cf6">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                      </select> 
                        <button type="button" style="width: 214px">Buy Now</button>
                    </div>
                </div>
            </div>
            <div class="product-card" id="siete">
                <div class="product-img">
                    <img class="productImage" src="IMAGENES\f7.png" height="327" width="420"/>
                </div>
                <div class="product-info">
                    <div class="product-text">
                        <h1>ROSA MINIATURA</h1>
                        <p><b>UBICACIÓN:</b> Exterior a pleno sol.<br /> <b>FLORACIÓN:</b>  De Primavera a Otoño, flores de hasta 5 cm de diámetro con forma de copa, muchas veces perfumadas, en color rosa, rojo, amarillo, naranja, blanco, y combinados. <br /> <b>OBSERVACIONES:</b> equeño arbusto bien ramificado, espinoso, de hojas caducas. Podar en Invierno para controlar su tamaño y estimular la floración. No resiste lugares húmedos, y sombreados.</p>
                    </div>
                    <div class="product-price-btn">
                        <p><span class="precio">$3900</span></p>
                        <select name="cantidad" id="cf7">
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
