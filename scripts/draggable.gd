extends Node2D
# TODO: Move to City Limits & Zack's Dress Up
# https://www.youtube.com/watch?v=uhgswVkYp0o

var is_draggable = false
var is_inside_draggable = false
var body_ref

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_draggable:
		if Input.is_action_just_pressed("click"):
			global_position = get_global_mouse_position()
		elif Input.is_action_just_released("click"):
			is_draggable = false
			var tween = get_tree().create_tween()
			if is_inside_draggable:
				tween.tween_property(self,"postion",body_ref.position,0.2).set_ease(Tween.EASE_OUT)
			else:
				tween.tween_property(self,"global_postion",body_ref.position,0.2).set_ease(Tween.EASE_OUT)
