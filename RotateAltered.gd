# Jennifer Guajardo

extends Node2D
@export var rotation_speed : float
# I tried to alter the rotation speed variable to its own unique variable 
# for the script, but renaming it won't work.

# Jenny's Notes: Attempting to alter trajectory of rotation with this version
# of the script for the "Bowser" bonus.
# Okay, so I may have accidentally caused the speed and direction to change
# during runtime, as opposed to what I initially attempted.

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# I accidentally found out how the variables can affect the speed of the rotation.
	# The trajectory of Mars and Venus will change during runtime.
	# Due to sharing the same variable (I think) the rest of the planets are also effected in their speed.
	# I think Earth is the most obvious in this unintentional speed increase.
	print("Rotation Speed:", rotation_speed) # Live feed of rotation speed. See "Output" console.
	rotation_speed -= 0.0002 # This number is a tad arbitrary.
	if rotation_speed < -.45 : rotation_speed == .3 	# Because why not? I wanna experiment.
	transform = transform.rotated_local(rotation_speed)
	# Attempt at oscillation. I don't think it worked. Dummied out cuz I didn't want it.
	# transform = transform.rotated(.03)
	# transform = transform.rotated(-.014)
	transform = transform.rotated(.0003)
	# Okay, for some reason, this changes the location of the planets.
	# Now, Venus and Mars will alter where they are, slightly, during each rotation, 
	# and will often collide directly into the sun.
