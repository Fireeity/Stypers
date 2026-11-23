extends CharacterBody2D

@onready var target = get_tree().get_first_node_in_group("Player")
@onready var targetnode = target.get_parent()
@export var speed: float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float):
	print(targetnode)
	print(targetnode.position)
	var direction = (targetnode.position-position).normalized()
	velocity = direction * speed
	look_at(targetnode.position)
	move_and_slide()
