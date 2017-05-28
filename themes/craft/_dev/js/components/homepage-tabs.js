/**
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
 */
import $ from 'jquery';

$(document).ready(function () {

$('.tab-content .tab-pane').eq(0).addClass('active');
var titles = $('.tab-content .nav-item a');
var tabs = $('#home-page-tabs li');  
var wdth = 100/titles.length + "%";

    for (var i = 0; i < titles.length - 1; i++) {
	  tabs.outerWidth(wdth);
      tabs.clone().insertAfter(tabs);
    }
    for (var i = 0; i < titles.length; i++) {
	    var newTabs = $('#home-page-tabs li');  
	    	newTabs.eq(0).find('a').addClass('active');
	    var href = titles.eq(i).attr('href');
	    var text = titles.eq(i).text();
	   		newTabs.eq(i).find('a').attr('href', href).text(text);
    };
       
var commonOptions = {
    direction: 'horizontal',
    loop: true,
//     autoHeight: true,
    paginationType: 'bullets',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',	
}
 var options = {
    direction: 'horizontal',
    loop: true,
//     autoHeight: true,
    paginationType: 'bullets',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    pagination: '.swiper-pagination'	 
 }
 var newOpt = {
    direction: 'horizontal',
    loop: true,
//     autoHeight: true,
    paginationType: 'bullets',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',	
	pagination: '.new-pagination'	
 }
    
 var SwiperTabs = new Swiper ('.products', options);   
 var SwiperTabsFeatured = new Swiper ('.featured-products', options);  
 var SwiperTabsBest = new Swiper ('.bestsellers', options);   
 var SwiperTabsSpec = new Swiper ('.specials', options);  
 var SwiperTabsNew = new Swiper ('.new_products', newOpt);       

   
   var socialLinks = $('.footer-container.hidden-md-down .block-social li');
   if (socialLinks.length > 6) {
	   socialLinks.addClass('minified-padding');
   } 


 });
 

