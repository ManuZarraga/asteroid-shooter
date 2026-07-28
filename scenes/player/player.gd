extends CharacterBody2D

@export var speed: float

func _physics_process(delta):
	var y_input = Input.get_axis("up", "down")
	var x_input = Input.get_axis("left", "right")
	velocity = Vector2(x_input, y_input) * speed
	move_and_slide()
