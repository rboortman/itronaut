$(document).ready ->
	
	# Move
	# $('.block1').hover(
	# 	-> to_block1()
	# 	->
	# )
	# 
	# $('.block2').hover(
	# 	-> to_block2()
	# 	->
	# )
	# 
	# $('.block3').hover(
	# 	-> to_block3()
	# 	->
	# )
	
	# Appear
	$('.block1').hover(
		-> block1_in()
		-> block1_out()
	)
	
	$('.block2').hover(
		-> block2_in()
		-> block2_out()
	)
	
	$('.block3').hover(
		-> block3_in()
		-> block3_out()
	)
	
	
	# Move code
	prologue = $('.prologue')
	arrow = $('.arrow')
	
	parent_width = prologue.parent().parent().width()
	prologue_width = prologue.outerWidth()
	arrow_width = arrow.outerWidth()
	prologue_padding = 20
	arrow_padding_side = 60
	arrow_padding_middle = prologue.width() - arrow_padding_side
	duration = 1000
	style = 'easeInOutExpo'
	# style = 'easeInOutCubic'
	
	to_block1 = ->
		prologue.delay(duration).animate { left: prologue_padding + 'px' }, { queue: false, duration: duration, easing: style }
		arrow.animate { left: arrow_padding_side + 'px' }, { queue: false, duration: duration, easing: style }
		new_id('block1')
		display_text('balloon1')
	
	to_block2 = ->
		if prologue.attr('id') is 'block1'
			prologue.animate { left: prologue_padding + 'px' }, { queue: false, duration: duration, easing: style }
			arrow.animate { left: arrow_padding_middle + 'px' }, { queue: false, duration: duration, easing: style }
		else if prologue.attr('id') is 'block3'
			prologue.animate { left: parent_width - (prologue_width + prologue_padding) + 'px' }, { queue: false, duration: duration, easing: style }
			arrow.animate { left: parent_width - (arrow_width + arrow_padding_middle) + 'px' }, { queue: false, duration: duration, easing: style }
		new_id('block2')
		display_text('balloon2')
	
	to_block3 = ->
		prologue.animate { left: parent_width - (prologue_width + prologue_padding) + 'px' }, { queue: false, duration: duration, easing: style }
		arrow.animate { left: parent_width - (arrow_width + arrow_padding_side) + 'px' }, { queue: false, duration: duration, easing: style }
		new_id('block3')
		display_text('balloon3')
	
	new_id = (new_id) ->
		prologue.attr('id', new_id)
	
	display_text = (balloon) ->
		$('#' + balloon).siblings().hide()
		$('#' + balloon).delay(100000).show()
	
	
	# Appear code
	balloon1 = $('#balloon1')
	balloon2 = $('#balloon2')
	balloon3 = $('#balloon3')
	
	
	block1_in = ->
		balloon1.animate { opacity: 0.85 }, { queue: false, duration: duration, easing: style }
	
	block1_out = ->
		balloon1.animate { opacity: 0 }, { queue: false, duration: duration, easing: style }
	
	block2_in = ->
		balloon2.animate { opacity: 0.85 }, { queue: false, duration: duration, easing: style }
	
	block2_out = ->
		balloon2.animate { opacity: 0 }, { queue: false, duration: duration, easing: style }
	
	block3_in = ->
		balloon3.animate { opacity: 0.85 }, { queue: false, duration: duration, easing: style }
	
	block3_out = ->
		balloon3.animate { opacity: 0 }, { queue: false, duration: duration, easing: style }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	