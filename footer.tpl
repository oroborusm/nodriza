{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{if !isset($content_only) || !$content_only}
					</div><!-- #center_column -->
						{if isset($right_column_size) && !empty($right_column_size)}

						{/if}
					</div><!-- popularesMasVendidos -->
				</div>
			</div>



		<!--</div> esto abre desde el archivo header.tpl#page -->


					{if isset($HOOK_HOME) && $HOOK_HOME|trim}
					<!-- hook_home arriba en los comentarios quedo el contenido que va aca por default-->

						<div class="contenedorPartners">

							  <!-- SilverTrack requires only this part -->
								<div class="owl-carousel">
									<div class="item"><img src="themes/nodrizabak/img/1.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/2.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/3.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/4.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/5.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/7.jpg"></div>
									<div class="item"><img src="themes/nodrizabak/img/8.jpg"></div>
								</div>

						</div>
					{/if}



			{if isset($HOOK_FOOTER)}
				<!-- Footer -->

				<div class="footer-container">
					<footer id="footer">
						<div class="row">
							{$HOOK_FOOTER}

						</div>
						<div class="finFooter">
							<div class="row">
								<figure>
									<img src="https://www.toolmania.cl/public_img/nodriza.png">
								</figure>





								<!-- Block Newsletter module-->
								<div id="newsletter_block_left" class="boletin">
									<div class="contBoletin">
										<h4>{l s='Newsletter' mod='blocknewsletter'}</h4>
										<div class="block_content">
											<form action="{$link->getPageLink('index')|escape:'html':'UTF-8'}" method="post">
												<div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
													<input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='blocknewsletter'}{/if}" />
									                <button type="submit" name="submitNewsletter" class="btn btn-default button button-small">
									                    <span>{l s='Ok' mod='blocknewsletter'}</span>
									                </button>
													<input type="hidden" name="action" value="0" />
												</div>
											</form>
										</div>
										
									</div>
								</div>
								<!-- /Block Newsletter module-->
								{strip}
								{if isset($msg) && $msg}
								{addJsDef msg_newsl=$msg|@addcslashes:'\''}
								{/if}
								{if isset($nw_error)}
								{addJsDef nw_error=$nw_error}
								{/if}
								{addJsDefL name=placeholder_blocknewsletter}{l s='Enter your e-mail' mod='blocknewsletter' js=1}{/addJsDefL}
								{if isset($msg) && $msg}
									{addJsDefL name=alert_blocknewsletter}{l s='Newsletter : %1$s' sprintf=$msg js=1 mod="blocknewsletter"}{/addJsDefL}
								{/if}
								{/strip}








							</div>
						</div>
					</footer>
					<!-- #footer -->
				</div>

			{/if}
	</div>


{/if}
{include file="$tpl_dir./global.tpl"}

	<script>
		$('.owl-carousel').owlCarousel({
			autoplay:true,
    		autoplayHoverPause:true,
			autoplayTimeout:3000,
		    loop:true,
		    margin:10,
		    nav:false,
		    pagination:true,
		    responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:3
		        },
		        1000:{
		            items:5
		        }
		    }
		})

		$('input, textarea').placeholder();

		$('.dropdown-button').dropdown({
			inDuration: 300,
			outDuration: 225,
			constrain_width: false, // Does not change width of dropdown to that of the activator
			hover: true, // Activate on hover
			gutter: 0, // Spacing from edge
			belowOrigin: false // Displays dropdown below the button
			}
		);

		
	</script>

    </div>



	</body>
</html>
