extends Area2D

# La anotacion @export expone el valor de la variable speed en el inspector
@export var min_random_speed: float
@export var max_random_speed: float
@export var min_random_rotation: float
@export var max_random_rotation: float
@export var points: int

var random_speed
var random_rotation_speed

func _ready() -> void:
	random_speed = randf_range(min_random_speed, max_random_speed)
	random_rotation_speed = randf_range(min_random_rotation, max_random_rotation)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= random_speed * delta
	rotation_degrees += random_rotation_speed * delta


func _on_area_entered(area: Area2D) -> void:
	var is_player = area.is_in_group("player")
	var is_laser = area.is_in_group("laser")
	
	if is_laser:
		GameManager.add_score(points)
	
	if is_player or is_laser:
		queue_free()
