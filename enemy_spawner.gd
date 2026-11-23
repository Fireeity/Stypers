extends Node2D

@export var enemy_prefab: Array[PackedScene]

func _on_timer_timeout() -> void:
	# spawns an enemy
	var randomenemy = enemy_prefab.pick_random()
	var enemy = randomenemy.instantiate()
	add_child(enemy)
	print("Time")
	print(randomenemy)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
