{*
* 2007-2015 PrestaShop
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
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!-- Block search module TOP -->
<div id="search_widget" class=" search-widget" data-search-controller-url="{$search_controller_url}">
{*
	<span class="search search_widget__btn hidden-md-down" id="desktop-search-btn">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 118.783 118.783" style="enable-background:new 0 0 118.783 118.783;" xml:space="preserve" width="25px" height="25px">
<g>
	<path d="M115.97,101.597L88.661,74.286c4.64-7.387,7.333-16.118,7.333-25.488c0-26.509-21.49-47.996-47.998-47.996   S0,22.289,0,48.798c0,26.51,21.487,47.995,47.996,47.995c10.197,0,19.642-3.188,27.414-8.605l26.984,26.986   c1.875,1.873,4.333,2.806,6.788,2.806c2.458,0,4.913-0.933,6.791-2.806C119.72,111.423,119.72,105.347,115.97,101.597z    M47.996,81.243c-17.917,0-32.443-14.525-32.443-32.443s14.526-32.444,32.443-32.444c17.918,0,32.443,14.526,32.443,32.444   S65.914,81.243,47.996,81.243z"></path>
</g>
</svg>	
	</span>
	<a class="hidden-lg-up" id="mobile-search-btn">
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 118.783 118.783" style="enable-background:new 0 0 118.783 118.783;" xml:space="preserve" width="25px" height="25px">
<g>
	<path d="M115.97,101.597L88.661,74.286c4.64-7.387,7.333-16.118,7.333-25.488c0-26.509-21.49-47.996-47.998-47.996   S0,22.289,0,48.798c0,26.51,21.487,47.995,47.996,47.995c10.197,0,19.642-3.188,27.414-8.605l26.984,26.986   c1.875,1.873,4.333,2.806,6.788,2.806c2.458,0,4.913-0.933,6.791-2.806C119.72,111.423,119.72,105.347,115.97,101.597z    M47.996,81.243c-17.917,0-32.443-14.525-32.443-32.443s14.526-32.444,32.443-32.444c17.918,0,32.443,14.526,32.443,32.444   S65.914,81.243,47.996,81.243z"></path>
</g>
</svg>	
	</a>	
*}	
	<div class="search_widget__form">
	<div class="search_widget__form_close-wrap hidden-md-down"><div class="search_widget__form_close">&nbsp;</div></div>
    <h2 class="hidden-md-down">{l s='Search the store' d='Shop.Theme.Catalog'}</h2>
	<form method="get" class="form-group" action="{$search_controller_url}">
		<input type="hidden" name="controller" value="search">
		<input type="text" class="form-control" name="s" value="{$search_string}" placeholder="{l s='Search our catalog' d='Shop.Theme.Catalog'}">
		<button type="submit">
			<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 118.783 118.783" style="enable-background:new 0 0 118.783 118.783;" xml:space="preserve" width="25px" height="25px">
		<g>
			<path d="M115.97,101.597L88.661,74.286c4.64-7.387,7.333-16.118,7.333-25.488c0-26.509-21.49-47.996-47.998-47.996   S0,22.289,0,48.798c0,26.51,21.487,47.995,47.996,47.995c10.197,0,19.642-3.188,27.414-8.605l26.984,26.986   c1.875,1.873,4.333,2.806,6.788,2.806c2.458,0,4.913-0.933,6.791-2.806C119.72,111.423,119.72,105.347,115.97,101.597z    M47.996,81.243c-17.917,0-32.443-14.525-32.443-32.443s14.526-32.444,32.443-32.444c17.918,0,32.443,14.526,32.443,32.444   S65.914,81.243,47.996,81.243z"></path>
		</g>
		</svg>	
		</button>
	</form>
	</div>
</div>
<!-- /Block search module TOP -->