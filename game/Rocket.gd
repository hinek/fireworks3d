extends RigidBody


# Called when the node enters the scene tree for the first time.
func _ready():
	linear_velocity = Vector3(0, randf() * 5 + 15, 0)
	translation = Vector3(randf() * 5, 0, randf() * 5)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if linear_velocity.length() < 1:
		var effect = load("res://Explosion.tscn").instance()
		effect.translation = translation
		get_parent().add_child(effect)
		queue_free()
