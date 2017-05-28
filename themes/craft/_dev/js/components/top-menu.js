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
import DropDown from './drop-down';

export default class TopMenu extends DropDown {
  init() {
    let elmId;
    let self = this;
    this.el.find('li').click((e) => {
      if (this.el.parent().hasClass('mobile')) { 
        return;
      }
      if (elmId !== $(e.currentTarget).attr('id')) {
        if ($(e.target).data('depth') === 0) {
          $(`#${elmId} .js-sub-menu`).hide();
        }
        elmId = $(e.currentTarget).attr('id');
      }
      if (elmId && $(e.target).data('depth') === 0) {
        $(`#${elmId} .js-sub-menu`).show().css({
          top: $(`#${elmId}`).height() + $(`#${elmId}`).position().top
        });
      }
    });
    $('#menu-icon').on('click', function() {
      $('#mobile_top_menu_wrapper').toggle();
      self.toggleMobileMenu();
    });
    $('.js-top-menu').mouseleave(() => {
      if (this.el.parent().hasClass('mobile')) {
        return;
      }
      $(`#${elmId} .js-sub-menu`).hide();
    });
    this.el.on('click', (e) => {
      if (this.el.parent().hasClass('mobile')) {
        return;
      }
      e.stopPropagation();
    });
    prestashop.on('responsive update', function(event) {
      $('.js-sub-menu').removeAttr('style');
      self.toggleMobileMenu();
    });
    super.init();
  }

  toggleMobileMenu() {
      if ($('#mobile_top_menu_wrapper').is(":visible")) {
        $('#notifications').hide();
        $('#wrapper').hide();
        $('#footer').hide();
      } else {
        $('#notifications').show();
        $('#wrapper').show();
        $('#footer').show();
      }
  }
}


$('.menu_toggle').click(function(){
	$('#top-menu').slideToggle(200);
	$(this).find($('.expand-more')).toggleClass('flip');   
});

$('#show-filters').click(function(){
	$('#search_filters_wrapper').slideToggle(300);
});
$('.block-contact-title').click(function(){
	$('#show-contacts').slideToggle(300);
	$(this).toggleClass('active'); 
}); 

$('.category a .navbar-toggler').click(function(e){
	e.preventDefault();
	$(this).closest('a').next().slideToggle(200);
});

$('#delivery-addresses .address-item').click(function(){
	$(this).siblings().removeClass('selected');
	$(this).addClass('selected');
});

var sliderNav = $('#carousel .direction');
var stickyMenu = $('.position-static'); 
var stickySearch = $('#search_widget');    
var start_pos = stickyMenu.offset().top;

$(window).scroll(function(){
    if ($(window).scrollTop()>=start_pos) {
  	    if (stickyMenu.hasClass()==false) {
		    stickyMenu.addClass('static');
		    stickySearch.addClass('static');
	    }
    } else {
	    stickyMenu.removeClass('static');
	    stickySearch.removeClass('static');
    }	
}); 

var qt = $('#product .tabs .nav-item').length;
var calcW = (100/qt - 2) + "%";
$('#product .tabs .nav-item').outerWidth(calcW);


     