extends Spatial

func die():
	$DeadWheel1.visible = true
	$DeadWheel1/CollisionShape.disabled = false
	$DeadWheel1.set_as_toplevel(true)
	$DeadWheel2.visible = true
	$DeadWheel2/CollisionShape.disabled = false
	$DeadWheel2.set_as_toplevel(true)
	$DeadWheel3.visible = true
	$DeadWheel3/CollisionShape.disabled = false
	$DeadWheel3.set_as_toplevel(true)
	$DeadWheel4.visible = true
	$DeadWheel4/CollisionShape.disabled = false
	$DeadWheel4.set_as_toplevel(true)
	
