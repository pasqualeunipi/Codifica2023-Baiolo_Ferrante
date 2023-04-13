jQuery(document).ready(function($){
	$(window).scroll(function() {
		if($(this).scrollTop() != 0) {
                        //se non siamo in cima alla pagina
			$('#top').fadeIn(); //faccio apparire il box	
		} else {
                        //altrimenti (il visitatore è in cima alla pagina scrollTop = 0)
			$('#top').fadeOut();//Il box scompare
		}
	});//Allo scroll function

	$('#top').click(function() {
                //Se clicco sul box torno su (scrollTop:0) con un timing di animazione.
		$('body,html').animate({scrollTop:0},800);
	});//Click

});