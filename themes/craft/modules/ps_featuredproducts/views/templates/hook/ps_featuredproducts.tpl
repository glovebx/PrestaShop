<div class="nav-item hidden-sm-up"><a data-toggle="tab" class="nav-link" href="#featured_products">{l s='Featured Products' d='Modules.FeaturedProducts.Shop'}</a></div> 
<section class="featured-products clearfix tab-pane hidden-xs-down" id="featured_products">
  <div class="products">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
</section>
<section class="featured-products hidden-sm-up" id="featured_products">
  <div class="products featured-products swiper-container">
{* 	<div class="swiper-pagination"></div> *}
  
	<div class="swiper-button-prev"></div>
    <div class="swiper-button-next"></div>
      {include file="catalog/_partials/miniatures/product-slider.tpl" product=$product}
  </div>
</section>