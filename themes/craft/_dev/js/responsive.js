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
import prestashop from 'prestashop';

prestashop.responsive = prestashop.responsive || {};

prestashop.responsive.current_width = $(window).width();
prestashop.responsive.min_width = 768;
prestashop.responsive.mobile = prestashop.responsive.current_width < prestashop.responsive.min_width;

function swapChildren(obj1, obj2)
{
	var temp = obj2.children().detach();
	obj2.empty().append(obj1.children().detach());
	obj1.append(temp);
}

/*
function toggleMobileStyles()
{
	if (prestashop.responsive.mobile) {
	} else {
	}
	prestashop.emit('responsive update', {
		mobile: prestashop.responsive.mobile
	});
}
*/

  function scrollThumbs(){
	 var desktopOptions = {
	    direction: 'horizontal',
	    autoHeight: true,
	    slidesPerView: 5,
	    paginationClickable: true,
	    spaceBetween: 0,
	    nextButton: '.swiper-button-next',
	    prevButton: '.swiper-button-prev'	 
	 }
	  var mobileOptions = {
	    direction: 'horizontal',
	    slidesPerView: 3,
	    spaceBetween: 0,
	    loop: false,
	    autoHeight: true,
	    nextButton: '.swiper-button-next',
	    prevButton: '.swiper-button-prev'	 
	 }

	 
   var Thumbs = new Swiper ('#product .js-qv-mask', desktopOptions);   
   if ( $(window).width() < 544 ) {
   		var Thumbs = new Swiper ('#product .js-qv-mask', mobileOptions); 	  
   }   	  	  	  
  }
  
 function productsSlider(){
	var accessOptions = {
	    direction: 'horizontal',
	    slidesPerView: 4,
		loop: true,
	    spaceBetween: 0,
	    nextButton: '.swiper-button-next',
	    prevButton: '.swiper-button-prev'	 
	 } 
	 var accessOptionsM = {
	    direction: 'horizontal',
	    slidesPerView: 1,
		loop: false,
	    spaceBetween: 0,
	    nextButton: '.swiper-button-next',
	    prevButton: '.swiper-button-prev'			 
	 } 	 
	var categoryOptions = {
	    direction: 'horizontal',
	    slidesPerView: 4,
		loop: true,
	    spaceBetween: 0,
	    nextButton: '.category-next',
	    prevButton: '.category-prev'	 
	 } 	
	var categoryOptionsM = {
	    direction: 'horizontal',
	    slidesPerView: 1,
		loop: false,
	    spaceBetween: 0,
	    nextButton: '.category-next',
	    prevButton: '.category-prev'	 
	 } 	 
	 
    var SwiperAcc = new Swiper ('.product-accessories', accessOptions);  
    var SwiperCP = new Swiper ('.categoryproducts', categoryOptions);  	
    
    if ( $(window).width() < 544 ) {
    var SwiperAcc = new Swiper ('.product-accessories', accessOptionsM);  
    var SwiperCP = new Swiper ('.categoryproducts', categoryOptionsM);   
     }    
  }
  
/*
  function MobileHomesliderPagerFix(){
	  var MobilePagination = $('.homeslider-container .swiper-pagination');
	  var MobileImageHeight = $('.homeslider-container img').height();
	  	  MobilePagination.css({
		  	  position: 'absolute',
		  	  top: MobileImageHeight + 25
	  	  });
  }
*/
  

$(window).on('resize', function() {
	var _cw = prestashop.responsive.current_width;
	var _mw = prestashop.responsive.min_width;
	var _w = $(window).width();
	var _toggle = (_cw >= _mw && _w < _mw) || (_cw < _mw && _w >= _mw);
	prestashop.responsive.mobile = _cw >= _mw;
	prestashop.responsive.current_width = _w;
	
scrollThumbs();
productsSlider();
// MobileHomesliderPagerFix();
/*
	if (_toggle) {
		toggleMobileStyles();
	}
*/
});

$(document).ready(function() {
	
	if (prestashop.responsive.mobile) {
// 		toggleMobileStyles();
	scrollThumbs();
	productsSlider();
// 	MobileHomesliderPagerFix();
	}
});

