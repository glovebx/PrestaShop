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
  createProductSpin();
  createInputFile();
  coverImage();
  scrollThumbs();
  productsSlider();


  prestashop.on('updatedProduct', function (event) {
    createInputFile();
    coverImage();
    if (event && event.product_minimal_quantity) {
      const minimalProductQuantity = parseInt(event.product_minimal_quantity, 10);
      const quantityInputSelector = '#quantity_wanted';
      let quantityInput = $(quantityInputSelector);

      // @see http://www.virtuosoft.eu/code/bootstrap-touchspin/ about Bootstrap TouchSpin
      quantityInput.trigger('touchspin.updatesettings', {min: minimalProductQuantity});
    }
    scrollThumbs();
    $($('.tabs .nav-link.active').attr('href')).addClass('active').removeClass('fade');
    $('.js-product-images-modal').replaceWith(event.product_images_modal);
  });

  function coverImage() {
    $('.js-thumb').on(
      'click',
      (event) => {
        $('.js-modal-product-cover').attr('src',$(event.target).data('image-large-src'));
        $('.selected').removeClass('selected');
        $(event.target).addClass('selected');
        $('.js-qv-product-cover').prop('src', $(event.currentTarget).data('image-large-src'));
      }
    );
  }

  function scrollThumbs(){
	 var desktopOptions = {
	    direction: 'horizontal',
	    autoHeight: true,
	    slidesPerView: 5,
	    paginationClickable: true,
	    spaceBetween: 0,
	    nextButton: '.thumb-next',
	    prevButton: '.thumb-prev'	 
	 }
	  var mobileOptions = {
	    direction: 'horizontal',
	    slidesPerView: 3,
	    spaceBetween: 0,
	    loop: false,
	    autoHeight: true,
	    nextButton: '.thumb-next',
	    prevButton: '.thumb-prev'	 
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
		loop: true,
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
		loop: true,
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

  function createInputFile()
  {
    $('.js-file-input').on('change',(event)=>{
      $('.js-file-name').text($(event.currentTarget).val());
    });
  }

  function createProductSpin()
  {
    let quantityInput = $('#quantity_wanted');
    quantityInput.TouchSpin({
      verticalbuttons: true,
      verticalupclass: 'material-icons touchspin-up',
      verticaldownclass: 'material-icons touchspin-down',
      buttondown_class: 'btn btn-touchspin js-touchspin',
      buttonup_class: 'btn btn-touchspin js-touchspin',
      min: parseInt(quantityInput.attr('min'), 10),
      max: 1000000
    });

    quantityInput.on('change', function (event) {
      let $productRefresh = $('.product-refresh');
      $(event.currentTarget).trigger('touchspin.stopspin');
      $productRefresh.trigger('click', {eventType: 'updatedProductQuantity'});
      event.preventDefault();

      return false;
    });
  }
});
