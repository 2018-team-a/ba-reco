// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require rails-ujs
//= require jquery_nested_form
//= require activestorage
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .


$(function(){
		$(window).scroll(function() {
		if ($(this).scrollTop() > 200) {
		$('.header-box').css({'z-index': '100'});
		}
	});
});


$(function(){
	$('.image-box1').mouseover(function(){
		$('.image-box1').css({'z-index': '20'});
	});
	$('.image-box1').mouseout(function(){
		$('.image-box1').css({'z-index': '2'});
	});
});
$(function(){
	$('.image-box2').mouseover(function(){
		$('.image-box2').css({'z-index': '20'});
	});
	$('.image-box2').mouseout(function(){
		$('.image-box2').css({'z-index': '3'});
	});
});
$(function(){
	$('.image-box3').mouseover(function(){
		$('.image-box3').css({'z-index': '20'});
	});
	$('.image-box3').mouseout(function(){
		$('.image-box3').css({'z-index': '4'});
	});
});
$(function(){
	$('.image-box4').mouseover(function(){
		$('.image-box4').css({'z-index': '20'});
	});
	$('.image-box4').mouseout(function(){
		$('.image-box4').css({'z-index': '5'});
	});
});
$(function(){
	$('.image-box5').mouseover(function(){
		$('.image-box5').css({'z-index': '20'});
	});
	$('.image-box5').mouseout(function(){
		$('.image-box5').css({'z-index': '6'});
	});
});
$(function(){
	$('.image-box6').mouseover(function(){
		$('.image-box6').css({'z-index': '20'});
	});
	$('.image-box6').mouseout(function(){
		$('.image-box6').css({'z-index': '7'});
	});
});
$(function(){
	$('.image-box7').mouseover(function(){
		$('.image-box7').css({'z-index': '20'});
	});
	$('.image-box7').mouseout(function(){
		$('.image-box7').css({'z-index': '8'});
	});
});
$(function(){
	$('.image-box8').mouseover(function(){
		$('.image-box8').css({'z-index': '20'});
	});
	$('.image-box8').mouseout(function(){
		$('.image-box8').css({'z-index': '9'});
	});
});
$(function(){
	$('.image-box9').mouseover(function(){
		$('.image-box9').css({'z-index': '20'});
	});
	$('.image-box9').mouseout(function(){
		$('.image-box9').css({'z-index': '10'});
	});
});
$(function(){
	$('.image-box10').mouseover(function(){
		$('.image-box10').css({'z-index': '20'});
	});
	$('.image-box10').mouseout(function(){
		$('.image-box10').css({'z-index': '11'});
	});
});