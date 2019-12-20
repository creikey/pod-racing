tool
extends Node2D

export var color = Color()
export var maximum_target_length = 200.0
export var target_line_length_gradient: Gradient = Gradient.new()
export var target_offset = Vector2(50, 50)
export var target_line_width = 5.0
export var radius = 50.0

func _process(delta):
	update()

func _draw():
	var tension_amount: float = target_offset.length()/maximum_target_length
	print(tension_amount)
	draw_line(Vector2(), target_offset, target_line_length_gradient.interpolate(min(1.0, tension_amount)), target_line_width, true)
	draw_circle(Vector2(), radius, color)
