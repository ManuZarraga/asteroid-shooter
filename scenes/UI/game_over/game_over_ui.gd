extends Control

@onready var final_score_label: Label = %FinalScoreLabel


# Con hacerlo una sola vez, alcansaría. Se podría investigar cómo
# checkear el Game Over sin hacerlo en cada frame
func _process(_delta: float) -> void:
	if GameManager.is_game_over:
		visible = true
		final_score_label.text = "Your score: " + str(GameManager.get_score())
