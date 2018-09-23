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
	$('.image-box1').mouseover(function(){
		$('.image-box1').css({'z-index': '10'});
	});
	$('.image-box1').mouseout(function(){
		$('.image-box1').css({'z-index': '1'});
	});
});
$(function(){
	$('.image-box2').mouseover(function(){
		$('.image-box2').css({'z-index': '10'});
	});
	$('.image-box2').mouseout(function(){
		$('.image-box2').css({'z-index': '2'});
	});
});
$(function(){
	$('.image-box3').mouseover(function(){
		$('.image-box3').css({'z-index': '10'});
	});
	$('.image-box3').mouseout(function(){
		$('.image-box3').css({'z-index': '3'});
	});
});
$(function(){
	$('.image-box4').mouseover(function(){
		$('.image-box4').css({'z-index': '10'});
	});
	$('.image-box4').mouseout(function(){
		$('.image-box4').css({'z-index': '4'});
	});
});
$(function(){
	$('.image-box5').mouseover(function(){
		$('.image-box5').css({'z-index': '10'});
	});
	$('.image-box5').mouseout(function(){
		$('.image-box5').css({'z-index': '5'});
	});
});
$(function(){
	$('.image-box5').mouseover(function(){
		$('.image-box5').css({'z-index': '10'});
	});
	$('.image-box5').mouseout(function(){
		$('.image-box5').css({'z-index': '5'});
	});
});
$(function(){
	$('.image-box6').mouseover(function(){
		$('.image-box6').css({'z-index': '10'});
	});
	$('.image-box6').mouseout(function(){
		$('.image-box6').css({'z-index': '6'});
	});
