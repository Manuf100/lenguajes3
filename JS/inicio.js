// JavaScript: inicio.js
document.addEventListener("DOMContentLoaded", function () {
    function adjustCincopaWidth() {
        var cincopaDiv = document.getElementById('cincopa_4fb880');
        var windowWidth = window.innerWidth;

        if (windowWidth < 900) {
            cincopaDiv.style.width = '500px';
        } else if (windowWidth < 450) {
            cincopaDiv.style.width = '350px';
        }
        else {
            cincopaDiv.style.width = '1125px';
        }
    }

    // Ejecutar la función al cargar la página
    adjustCincopaWidth();

    // Ejecutar la función cada vez que se redimensione la ventana
    window.addEventListener('resize', adjustCincopaWidth);
});
