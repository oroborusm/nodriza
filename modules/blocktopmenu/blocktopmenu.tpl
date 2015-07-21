<!-- manias -->
{if $MENU != ''}
	<!-- Menu -->
	
	<nav class="menuManias" id="cd-lateral-nav">
		<ul class="cd-navigation menuTop">
			{$MENU}
		</ul>
	</nav>
	<!--/ Menu -->
{/if}

<script>
	$('.menuTop > li:has(> ul)').addClass('item-has-children')

	$('.item-has-children > ul').addClass('sub-menu')
	$('.item-has-children > ul').addClass('sub-menuDesktop')

	$('#subcategories').addClass('subcategories')

	//$('#menuTopCierra').on('click', function(){
	//	$('.menuTop').toggleClass('visible')
	//	$('.cierraMenu').toggleClass('cruz')
	//	$('.cierraMenu').toggleClass('lineas')
	//});
	if($(window).width() < 800){

		$('.sub-menuDesktop > li:has(> ul)').addClass('item-has-children')
		$('.sub-menuDesktop > li > ul').addClass('sub-menu')
	}
		
	$(".icono").each(function(i){
		i++;
		$(this).addClass("ico"+i);
	});	

	$(".menuTop > li").each(function(i){
		i++;
		$(this).addClass("maniaBackground"+i);
	});	
	$('.submenu-container > li').removeClass("listaMenuTop");


	if($(window).width() > 800){
		$('.menuTop > li:has(> ul)').addClass('hoverMenu')
	}
</script>