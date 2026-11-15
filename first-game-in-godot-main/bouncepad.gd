extends Area2D

@export var bounce_force: float = -550.0
@onready var bounce_sound: AudioStreamPlayer2D = $Jump

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		body.velocity.y = bounce_force
		bounce_sound.play()
