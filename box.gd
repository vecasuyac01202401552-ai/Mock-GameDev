extends Node

@onready var box_scene = preload("res://Box.tscn")
# Called when the node enters the scene tree for the first time.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_scissors_pressed():
	spawn_box()


func _on_paper_pressed():
	spawn_box()


func _on_rock_pressed():
	spawn_box()
	
	
	
func spawn_box():
	var box = box_scene.instantiate()
	var screenSize = get_viewport().size
	box.position = Vector2 (
		randf_range(50, screenSize.x - 50),
		randf_range(50, screenSize.y - 50)
	) 
	
	add_child(box)
