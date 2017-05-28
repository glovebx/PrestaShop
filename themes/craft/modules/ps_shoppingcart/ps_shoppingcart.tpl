<div id="_desktop_cart" class="nav-icon">
  <div class="blockcart cart-preview {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="header">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}">
      {/if}
<svg version="1.1" class="cart shopping-cart" xmlns="//www.w3.org  /2000/svg" xmlns:xlink="//www.w3.org  /1999/xlink" x="0px" y="0px" width="32px" height="32px" viewBox="0 0 90 90" enable-background="new 0 0 90 90" xml:space="preserve"><g><path d="M72.715,29.241H16.074c-4.416,0-2.961,3.613-2.961,8.03l3.802,38.897c0,4.416,3.614,4.229,8.031,4.229h38.896c4.416,0,8.664,0.188,8.664-4.229l3.167-38.897C75.674,32.854,77.131,29.241,72.715,29.241z"></path><path d="M44.394,10.491c7.146,0,12.961,5.814,12.961,12.961h3.543c0-9.101-7.403-16.505-16.504-16.505c-9.1,0-16.503,7.404-16.503,16.505h3.543C31.434,16.306,37.249,10.491,44.394,10.491z"></path></g></svg>
<!-- 
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 202.614 202.614" style="enable-background:new 0 0 202.614 202.614;" xml:space="preserve" width="26px" height="26px">
      <path  d="M177.91,55.377h-22.589v-1.368C155.311,24.25,131.091,0,101.302,0     C71.503,0,47.292,24.25,47.292,54.009v1.368H24.704L11.495,202.614h179.624L177.91,55.377L177.91,55.377z M101.302,6.624     c19.687,0,36.619,12.105,43.761,29.232c-9.448-14.137-25.5-23.478-43.761-23.478c-18.231,0-34.313,9.34-43.77,23.507     C64.713,18.729,81.635,6.624,101.302,6.624z M57.297,55.377c4.406-20.263,22.481-35.485,44.024-35.485     c21.582,0,39.618,15.222,44.024,35.485H57.297z"></path>
</svg> -->
        <span class="hidden-sm-down">{l s='' d='Shop.Theme.Checkout'}</span>
        <span class="cart-products-count">({$cart.products_count})</span>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
