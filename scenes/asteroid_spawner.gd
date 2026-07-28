extends Marker2D

@export var big_asteroid_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_asteroid()

# tomar la referencia de la escena de asteroide
# con instantiate() creo una instancia o copia de la escena, asignada a la variable
func create_asteroid():
	var big_asteroid_instance = big_asteroid_scene.instantiate()
	add_child(big_asteroid_instance)
