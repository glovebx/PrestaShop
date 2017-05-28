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

var wrapper = $("#wrapper");
var header = $('#header');
var searchWidget = $('#search_widget');
var newsletterBlock = $('.block_newsletter');
var panelToggle =  {
	search: {
		desktop: function(event) {
		  event.preventDefault();
		  searchWidget.toggleClass('show-panel');
		  wrapper.toggleClass('slide-wrapper');
	    },
	    mobile: function(){
		   searchWidget.toggleClass('show-panel-m'); 
	    }
	},
	newsletter: {
		desktop: function(){
		  newsletterBlock.toggleClass('show-panel');
		  wrapper.toggleClass('slide-wrapper');			
		},
		mobile: function(){
		  newsletterBlock.toggleClass('show-panel');
		}
	}
}

$('#desktop-search-btn').bind('click',  panelToggle.search.desktop);
$('#mobile-search-btn').bind('click',  panelToggle.search.mobile); 
$('.search_widget__form_close').bind('click',  panelToggle.search.desktop);
$('.newsletter-link.desktop').bind('click',  panelToggle.newsletter.desktop);
$('.newsletter-link.mobile').bind('click',  panelToggle.newsletter.mobile);  
$('.js-block_newsletter_close').bind('click',  panelToggle.newsletter.desktop);
$('.js-block_newsletter_close-mobile').bind('click',  panelToggle.newsletter.mobile);

$('.footer-container.hidden-lg-up .footer-links').prepend($('.newsletter-link.mobile').eq(1));
$('.footer-container.hidden-lg-up .footer-links').append($('.block-contact-title').eq(3));


//end
 });


