extends Node2D
@onready var music_player = $AudioStreamPlayer2D

func _ready():
	music_player.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
