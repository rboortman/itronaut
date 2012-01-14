$(document).ready ->
	
	$('.block1').hover(
		-> to_block1()
		->
	)
	
	$('.block2').hover(
		-> to_block2()
		->
	)
	
	$('.block3').hover(
		-> to_block3()
		->
	)
	
	prologue = $('.prologue')
	arrow = $('.arrow')
	duration = 0
	appear = 'normal'
	slow = 600
	delay_1 = 100
	delay_2 = 800
	
	to_block1 = ->
		if prologue.hasClass('right')
			arrow.hide(0)
			prologue.hide(appear)
			prologue.switchClass( 'right', 'left', 0 )
			prologue.show(appear)
			appear_arrow('balloon1', delay_2)
		else if arrow.hasClass('balloon2_1')
			arrow.hide(0)
			appear_arrow('balloon1', delay_1)
	
	to_block2 = ->
		if prologue.hasClass('left') && arrow.hasClass('balloon1')
			arrow.hide(0)
			appear_arrow('balloon2_1', delay_1)
		else if arrow.hasClass('balloon3')
			arrow.hide(0)
			appear_arrow('balloon2_3', delay_1)
	
	to_block3 = ->
		if prologue.hasClass('left')
			arrow.hide(0)
			prologue.hide(appear)
			prologue.switchClass( 'left', 'right', 0 )
			prologue.show('fast')
			appear_arrow('balloon3', delay_2)
		else if arrow.hasClass('balloon2_3')
			arrow.hide(0)
			appear_arrow('balloon3', delay_1)
	
	appear_arrow = (to_class, show_delay) ->
		if not arrow.hasClass(to_class)
			arrow.removeClass('balloon1')
			arrow.removeClass('balloon2_1')
			arrow.removeClass('balloon2_3')
			arrow.removeClass('balloon3')
			arrow.addClass(to_class)
			arrow.delay(show_delay).show(slow, -> arrow.stop())
			
	
	
	
	
	
	