tool
extends Node2D

export var color = Color()
export var radius = 50.0

func _ready():
	set_process(Engine.editor_hint)

func _process(delta):
	update()

func _draw():
	draw_circle(Vector2(), radius, color)
