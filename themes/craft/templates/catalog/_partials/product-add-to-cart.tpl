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
<div class="product-add-to-cart">
  {if !$configuration.is_catalog}
    <span class="control-label">{l s='Quantity' d='Shop.Theme.Catalog'}</span>
    {block name='product_quantity'}
      <div class="product-quantity">
        <div class="qty">
          <input
            type="text"
            name="qty"
            id="quantity_wanted"
            value="{$product.quantity_wanted}"
            class="input-group"
            min="{$product.minimal_quantity}"
          />
        </div>
        <div class="add">
          <button class="btn btn-primary add-to-cart" data-button-action="add-to-cart" type="submit" {if !$product.add_to_cart_url}disabled{/if}>
            <i class="material-icons shopping-cart">&#xE547;</i>
{* <svg version="1.1" class="cart shopping-cart" xmlns="//www.w3.org  /2000/svg" xmlns:xlink="//www.w3.org  /1999/xlink" x="0px" y="0px" width="20px" height="20px" viewBox="0 0 90 90" enable-background="new 0 0 90 90" xml:space="preserve"><g><path d="M72.715,29.241H16.074c-4.416,0-2.961,3.613-2.961,8.03l3.802,38.897c0,4.416,3.614,4.229,8.031,4.229h38.896c4.416,0,8.664,0.188,8.664-4.229l3.167-38.897C75.674,32.854,77.131,29.241,72.715,29.241z"></path><path d="M44.394,10.491c7.146,0,12.961,5.814,12.961,12.961h3.543c0-9.101-7.403-16.505-16.504-16.505c-9.1,0-16.503,7.404-16.503,16.505h3.543C31.434,16.306,37.249,10.491,44.394,10.491z"></path></g></svg> *}
            {l s='Add to cart' d='Shop.Theme.Actions'}
          </button>
          {block name='product_availability'}
            <span id="product-availability">
              {if $product.show_availability && $product.availability_message}
                {if $product.availability == 'available'}
                  <i class="material-icons product-available">&#xE5CA;</i>
                {elseif $product.availability == 'last_remaining_items'}
                  <i class="material-icons product-last-items">&#xE002;</i>
                {else}
                  <i class="material-icons product-unavailable">&#xE14B;</i>
                {/if}
                {$product.availability_message}
              {/if}
            </span>
          {/block}
        </div>
      </div>
      <div class="clearfix"></div>
    {/block}

    {block name='product_minimal_quantity'}
      <p class="product-minimal-quantity">
        {if $product.minimal_quantity > 1}
          {l
          s='The minimum purchase order quantity for the product is %quantity%.'
          d='Shop.Theme.Checkout'
          sprintf=['%quantity%' => $product.minimal_quantity]
          }
        {/if}
      </p>
    {/block}
  {/if}
</div>
