$(document).ready ->
	
	if $('#star').length > 0
		star = $('#star')[0].getContext '2d' if $('#star').length > 0
		
		color_to_draw = '#000'
		
		draw_star = (element, color, x, y, height_leg, width_leg) ->
			middle = [x + (height_leg + width_leg), y]
			new_width = width_leg * 2/3
			new_height = ((height_leg + width_leg) * Math.cos(45 * Math.PI/180)) - new_width
			startX = x
			startY = y
		
			element.fillStyle = color
			element.beginPath()
			element.moveTo x, y
			element.lineTo x += height_leg, y -= width_leg
			element.lineTo x += width_leg, y -= height_leg
			element.lineTo x += width_leg, y += height_leg
			element.lineTo x += height_leg, y += width_leg
			element.lineTo x -= height_leg, y += width_leg
			element.lineTo x -= width_leg, y += height_leg
			element.lineTo x -= width_leg, y -= height_leg
			element.closePath()
			element.fill()
		
			x = (middle[0] - (height_leg + width_leg)/2)
			y = (middle[1] - (height_leg + width_leg)/2)
			cosine = Math.cos(45 * Math.PI/180)
			height_leg = new_height * cosine
			width_leg = new_width * cosine
			height_leg = height_leg + width_leg
			width_leg = height_leg - (2 * width_leg)
		
			element.fillStyle = color
			element.beginPath()
			element.moveTo x, y
			element.lineTo x += height_leg, y += width_leg
			element.lineTo x += height_leg, y -= width_leg
			element.lineTo x -= width_leg, y += height_leg
			element.lineTo x += width_leg, y += height_leg
			element.lineTo x -= height_leg, y -= width_leg
			element.lineTo x -= height_leg, y += width_leg
			element.lineTo x += width_leg, y -= height_leg
			element.closePath()
			element.fill()
	
		draw_star(star, color_to_draw, 5, 70, 20, 5)