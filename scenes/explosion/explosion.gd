extends AnimatedSprite2D

func _ready():
	play("explosion")
	animation_finished.connect(queue_free)
