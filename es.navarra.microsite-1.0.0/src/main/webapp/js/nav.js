   <script type="text/javascript">
   function myFunction(){
		document.getElementById('nav').style.transition = "all 2s";
		alert("entra");
	};
	
	/*Poner fondo blanco al hacer click en el boton del menu */

	$('.dropdown-toggle').on('click', function(){

		if (window.pageYOffset <=100) {
	
		if ($(".menu-list li").hasClass("open")){
	
		nav.style.background = "rgba(255, 255, 255, 0.6)";
		}
		else{
		nav.style.background = "#FFF";
		}
	
		}
	});
	
   </script>	 