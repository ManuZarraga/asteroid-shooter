extends CharacterBody2D

@export var speed: float

func _physics_process(delta):
	var y_input = Input.get_axis('up', 'down')
	velocity.y = y_input * speed
	move_and_slide()
