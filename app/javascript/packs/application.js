
require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("jquery")
import "controllers"
import "bootstrap"
require("channels")
import $ from 'jquery'
/* JAVASCCRIPT FOR COMPONENTS */
require("../components/brand-logos")
$(document).on('turbolinks:load', function(){
  $('.dropdown').on("click",function(){
    if($(this).hasClass('show')){
      $(this).removeClass('show');
      $(this).find('.dropdown-menu').removeClass('show');
    }else{
      $(this).addClass('show');
      $(this).find('.dropdown-menu').addClass('show');
    }
    return true;
  })
})



