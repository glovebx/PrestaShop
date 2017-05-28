{function name="menu" nodes=[] depth=0}
  {strip}
    {if $nodes|count}
      <ul data-depth="{$depth}" {if $depth == 0}id="top-menu"{/if}>
        {foreach from=$nodes item=node}
          <li class="{$node.type}{if $node.current} current{/if}">	
            <a href="{$node.url}" {if $node.open_in_new_window}  data-target="#submenu" target="_blank" data-toggle="collapse" {/if}>
	            <span>{$node.label}
            {if $node.children} {* Added *}
               <div class="navbar-toggler collapse-icons" data-toggle="collapse" data-target="#submenu">
                  <i class="material-icons add">&#xE5C5;</i>
                </div>
                {/if}
	            </span>
            </a>
            <div class="collapse" id="submenu">
              {menu nodes=$node.children depth=$node.depth}
              {if $node.image_urls|count}
                <div class="menu-images-container">
                  {foreach from=$node.image_urls item=image_url}
                    <img src="{$image_url}">
                  {/foreach}
                </div>
            </div>
            {/if}
          </li>
        {/foreach}
      </ul>
    {/if}
  {/strip}
{/function}

<div class="menu col-lg-12 col-md-12 js-top-menu" id="_desktop_top_menu">
	<a id="menu_toggle" class="hidden-md-down menu_toggle">
		<span><span>Shop</span> <i class="material-icons expand-more">&#xE5C5;</i></span>
	</a>
    {menu nodes=$menu.children}
</div>
