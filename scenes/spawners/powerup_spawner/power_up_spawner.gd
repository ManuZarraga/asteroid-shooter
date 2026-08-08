extends Marker2D

@export var powerup_scene: PackedScene
@export var min_y: float
@export var max_y: float
@export var min_x: float
@export var max_x: float

@onready var timer: Timer = $Timer

func _ready():
	max_x = get_viewport().size.x / 2
	max_y = get_viewport().size.y / 2

func create_powerup():
	if GameManager.is_game_over:
		timer.stop()
		return
	
	var power_up_instance = powerup_scene.instantiate()
	add_child(power_up_instance) 
	var random_y = randf_range(min_y, max_y)
	var random_x = randf_range(min_x, max_x)
	#power_up_instance.position = Vector2(random_y, random_x)
	power_up_instance.global_position.y = random_y
	power_up_instance.global_position.x = random_x

func _on_timer_timeout() -> void:
	create_powerup()
