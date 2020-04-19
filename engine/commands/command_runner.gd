extends Node

var commands: Dictionary = {
	"noclip": preload("res://engine/commands/noclip_command.gd").new()
}

var local_player: KinematicBody2D = null

func _ready():
	pass

func run(string: String):
	var strings: PoolStringArray = string.split(" ", true)
	
	if strings[0] is String && commands.has(strings[0]):
		var command: Command = commands[strings[0]]
		command.run(strings)
		pass
