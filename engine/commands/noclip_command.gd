extends "res://engine/commands/command.gd"

func _ready():
	pass

func run(data: PoolStringArray):
	if command_runner.local_player != null:
		var collision: CollisionShape2D = command_runner.local_player.get_node("CollisionShape2D")
		collision.disabled = !collision.disabled
		var hitbox_collision: CollisionShape2D = command_runner.local_player.hitbox_collision
		hitbox_collision.disabled = !hitbox_collision.disabled
	pass
