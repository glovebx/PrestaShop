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

<div class="block-contact col-md-12 links wrapper">
  <div class="hidden-md-down">
    <a class="block-contact-title">{l s='Store information' d='Shop.Theme'}</a>
    <div id="show-contacts">
<svg width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 54.757 54.757" style="enable-background:new 0 0 54.757 54.757;" xml:space="preserve">
<g>
	<path d="M27.557,12c-3.859,0-7,3.141-7,7s3.141,7,7,7s7-3.141,7-7S31.416,12,27.557,12z M27.557,24c-2.757,0-5-2.243-5-5   s2.243-5,5-5s5,2.243,5,5S30.314,24,27.557,24z"></path>
	<path d="M40.94,5.617C37.318,1.995,32.502,0,27.38,0c-5.123,0-9.938,1.995-13.56,5.617c-6.703,6.702-7.536,19.312-1.804,26.952   L27.38,54.757L42.721,32.6C48.476,24.929,47.643,12.319,40.94,5.617z M41.099,31.431L27.38,51.243L13.639,31.4   C8.44,24.468,9.185,13.08,15.235,7.031C18.479,3.787,22.792,2,27.38,2s8.901,1.787,12.146,5.031   C45.576,13.08,46.321,24.468,41.099,31.431z"></path>
</g>
</svg>     
     <span class="address"> {$contact_infos.address.formatted nofilter}</span>
      <br>     
      {if $contact_infos.phone}
<svg width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 463.009 463.009" enable-background="new 0 0 463.009 463.009">
  <g>
    <path d="m462.692,381.085c-1.472-11.126-7.895-20.719-17.62-26.318l-114.226-65.767c-13.99-8.055-31.738-5.71-43.157,5.708l-22.499,22.499c-5.987,5.988-15.459,6.518-22.028,1.231-17.737-14.272-35.201-29.979-51.906-46.685-16.705-16.705-32.412-34.168-46.685-51.906-5.287-6.57-4.758-16.041 1.231-22.029l22.498-22.499c11.418-11.417 13.766-29.163 5.709-43.156l-65.767-114.226c-5.6-9.726-15.192-16.148-26.318-17.62-11.127-1.475-22.06,2.236-29.996,10.172l-33.901,33.902c-23.661,23.662-24.041,66.944-1.07,121.875 22.088,52.818 63.308,110.962 116.065,163.721 52.759,52.758 110.903,93.978 163.722,116.066 27.039,11.307 51.253,16.957 71.697,16.956 21.088,0 38.163-6.013 50.178-18.027l33.901-33.902c7.935-7.936 11.643-18.869 10.172-29.995zm-139.33-79.086l114.226,65.767c5.649,3.252 9.379,8.824 10.233,15.286 0.718,5.423-0.691,10.763-3.885,15.066l-151.805-86.638 6.165-6.165c6.631-6.631 16.941-7.994 25.066-3.316zm-243.406-286.811c6.463,0.855 12.034,4.585 15.286,10.234l65.767,114.226c4.68,8.127 3.316,18.435-3.315,25.065l-5.663,5.663-87.114-151.303c3.561-2.637 7.82-4.069 12.26-4.069 0.921-1.77636e-15 1.85,0.061 2.779,0.184zm328.055,419.187c-18.798,18.798-57.244,18.01-105.48-2.162-51.06-21.352-107.491-61.424-158.901-112.833-51.41-51.41-91.482-107.842-112.834-158.901-20.173-48.237-20.96-86.683-2.162-105.482l25.167-25.168 87.245,151.532-5.851,5.851c-11.415,11.416-12.409,29.488-2.311,42.04 14.609,18.156 30.68,36.024 47.764,53.108 17.086,17.085 34.954,33.156 53.109,47.765 12.55,10.098 30.622,9.105 42.04-2.312l5.338-5.338 152.016,86.759-25.14,25.141z"></path>
  </g>
</svg>         
        {* [1][/1] is for a HTML tag. *}
        {l s='Call us: [1]%phone%[/1]'
          sprintf=[
          '[1]' => '<span>',
          '[/1]' => '</span>',
          '%phone%' => $contact_infos.phone
          ]
          d='Shop.Theme'
        }
      {/if}
      {if $contact_infos.fax}
        <br>
        {* [1][/1] is for a HTML tag. *}
        {l
          s='Fax: [1]%fax%[/1]'
          sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%fax%' => $contact_infos.fax
          ]
          d='Shop.Theme'
        }
      {/if}
      {if $contact_infos.email}
        <br>
<svg width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 31.012 31.012" style="enable-background:new 0 0 31.012 31.012;" xml:space="preserve">
<g>
	<path d="M28.512,26.529H2.5c-1.378,0-2.5-1.121-2.5-2.5V6.982c0-1.379,1.122-2.5,2.5-2.5h26.012c1.378,0,2.5,1.121,2.5,2.5v17.047   C31.012,25.408,29.89,26.529,28.512,26.529z M2.5,5.482c-0.827,0-1.5,0.673-1.5,1.5v17.047c0,0.827,0.673,1.5,1.5,1.5h26.012   c0.827,0,1.5-0.673,1.5-1.5V6.982c0-0.827-0.673-1.5-1.5-1.5H2.5z"></path>
	<path d="M15.506,18.018c-0.665,0-1.33-0.221-1.836-0.662L0.891,6.219c-0.208-0.182-0.23-0.497-0.048-0.705   c0.182-0.21,0.498-0.23,0.706-0.049l12.778,11.137c0.64,0.557,1.72,0.556,2.358,0L29.46,5.466c0.207-0.183,0.522-0.162,0.706,0.049   c0.182,0.208,0.16,0.523-0.048,0.705L17.342,17.355C16.836,17.797,16.171,18.018,15.506,18.018z"></path>
</g>
</svg>              
        {* [1][/1] is for a HTML tag. *}
        {l
          s='Email us: [1]%email%[/1]'
          sprintf=[
            '[1]' => '<span>',
            '[/1]' => '</span>',
            '%email%' => $contact_infos.email
          ]
          d='Shop.Theme'
        }
      {/if}
    </div>
  </div>
  <div class="hidden-md-up">
    <div class="">
      <a class="block-contact-title" href="{$urls.pages.stores}">{l s='Store information' d='Shop.Theme'}</a>
    </div>
  </div>
</div>