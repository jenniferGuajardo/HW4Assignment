# Jennifer Guajardo

extends Node2D
@export var rotation_speed : float

# Hexagon Planet is semi-transparent.
# Both Hexagon & Uranus follow the slower node.
# Earth & the Rubix Cube follow the medium route.
# Venus and Mercury follow their own "RotateAltered" script

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	transform = transform.rotated_local(rotation_speed)
