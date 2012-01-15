$(document).ready ->
	
	draw_circle = (canvas_element, text, x, y) ->
		canvas_element.fillStyle = '#006CD9'
		canvas_element.beginPath()
		canvas_element.arc(45, 45, 45, 0, Math.PI*2,true)
		canvas_element.closePath()
		canvas_element.fill()

		canvas_element.fillStyle = '#333'
		canvas_element.font = 'bold 80px monaco'
		canvas_element.fillText text, x, y
	
		console.log canvas_element

	draw_circle($('#first_circle')[0].getContext('2d'), 'A', 21, 73) if $('#first_circle').length > 0
	draw_circle($('#second_circle')[0].getContext('2d'), 'B', 23, 75) if $('#second_circle').length > 0
	draw_circle($('#third_circle')[0].getContext('2d'), 'C', 16, 75) if $('#third_circle').length > 0
