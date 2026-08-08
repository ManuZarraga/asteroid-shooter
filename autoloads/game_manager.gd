# Manejador de variables y valores globales del juego
extends Node

# Los valores de los autoloads son PERSISTENTES, los valores 
# sobreviven a restarts y cambios de escena
var score = 0
var is_game_over = false

func _process(_delta: float) -> void:
	if is_game_over and Input.is_action_just_pressed("shoot"):
		restart_game()
		
func restart_game():
	get_tree().reload_current_scene()
	is_game_over = false
	score = 0

func add_score(points):
	if is_game_over:
		return
	score += points

func set_is_game_over(value):
	is_game_over = value

func get_score():
	return score
