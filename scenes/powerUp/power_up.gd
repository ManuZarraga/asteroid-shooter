extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("player"):
		var asteroids = get_tree().get_nodes_in_group("asteroids")
		var power_ups = get_tree().get_nodes_in_group("powerUp")
		
		for asteroid in asteroids:
			asteroid.destroy()
		
		for power_up in power_ups:
			power_up.destroy()
		
		queue_free()

func destroy():
	queue_free()
