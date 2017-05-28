{**
 * 2007-2016 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2016 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
{extends file='catalog/listing/product-list.tpl'}

{block name='product_list_header'}
    <div class="block-category card card-block row">
	<a class="back-to" onclick="history.go(-1);">
			<i class="material-icons">&#xE314;</i> {l s="Back" d='Shop.Theme'}
	</a>	
      <h1 class="h1">{$category.name}</h1>
 {if !empty($listing.rendered_facets)}
   <div id="show-filters">
	  <span class="btn btn-primary"> 
	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 247.46 247.46" style="margin-right: 5px;enable-background:new 0 0 247.46 247.46;" xml:space="preserve" width="12px" height="12px">
<path d="M246.744,13.984c-1.238-2.626-3.881-4.301-6.784-4.301H7.5c-2.903,0-5.545,1.675-6.784,4.301  c-1.238,2.626-0.85,5.73,0.997,7.97l89.361,108.384v99.94c0,2.595,1.341,5.005,3.545,6.373c1.208,0.749,2.579,1.127,3.955,1.127  c1.137,0,2.278-0.259,3.33-0.78l50.208-24.885c2.551-1.264,4.165-3.863,4.169-6.71l0.098-75.062l89.366-108.388  C247.593,19.714,247.982,16.609,246.744,13.984z M143.097,122.873c-1.105,1.34-1.711,3.023-1.713,4.761l-0.096,73.103  l-35.213,17.453v-90.546c0-1.741-0.605-3.428-1.713-4.771L23.404,24.682h200.651L143.097,122.873z"></path>
</svg>  
	  {l s='Filter' d='Shop.Theme'}
	   <i class="material-icons expand-more"></i>
	  </span>
   </div>
{/if}
  {hook h='displayFilters'}      
      {if $category.description}
        <div id="category-description" class="text-muted hidden-xl-down">{$category.description nofilter}</div>
        <div class="category-cover">
          <img src="{$category.image.large.url}" alt="{$category.image.legend}">
        </div>
      {/if}
    </div>
{*
    <div class="text-xs-center hidden-md-up block-category">
      <h1 class="h1">{$category.name}</h1>
    </div>
*}
 
           {block name='product_list_active_filters'}
          <div id="" class="hidden-md-up row mobile-active-filters">
            {$listing.rendered_active_filters nofilter}
          </div>
        {/block}   
    
  {block name='category_subcategories'}
    <aside class="clearfix">
      {if $subcategories|count}
        <nav class="subcategories">
          <ul>
            {foreach from=$subcategories item="subcategory"}
              <li>
                {block name='category_miniature'}
                  {include file='catalog/_partials/miniatures/category.tpl' category=$subcategory}
                {/block}
              </li>
            {/foreach}
          </ul>
        </nav>
      {/if}
    </aside>
  {/block}
      
{/block}

