extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var damage = calculate_damage(15, 2) 
	say_hi("Manu", 50, damage)
	
func say_hi(player_name, score, damage):
	print("Holii " + player_name)
	print("Tu score es: " + str(score))
	print("TOTAL DAMAGE: " + str(damage))
	
	
	
func calculate_damage(damage, multiplier):
	var total_damage = damage * multiplier
	return total_damage
	
	
	
