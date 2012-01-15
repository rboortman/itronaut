# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

window.onload = ->
	load_annimation()
	$('.menu').click header_annimation
header_annimation = -> console.log 'Oh oh..'
load_annimation = -> console.log 'Oh oh..'

$(document).ready ->
	
	stage = $('#stage')
	duration = 500
	
	load_annimation = ->
		stage.slideToggle duration, 'easeInCubic'
	
	header_annimation = (menu_item) ->
		stage.slideToggle(duration, 'easeOutCubic', -> window.location.href = '/home').hide(0) if @.id is 'home'
		stage.slideToggle(duration, 'easeOutCubic', -> window.location.href = '/contact').hide(0) if @.id is 'contact'
		stage.slideToggle(duration, 'easeOutCubic', -> window.location.href = '/about_us').hide(0) if @.id is 'about_us'