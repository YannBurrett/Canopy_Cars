extends CanvasLayer

func _input(event):
	if Input.is_action_pressed("1Player"):
		$GridContainer/ViewportContainer2.hide()
		$GridContainer/ViewportContainer3.hide()
		$GridContainer/ViewportContainer4.hide()
		$GridContainer.columns = 1
	if Input.is_action_pressed("2Player"):
		$GridContainer/ViewportContainer2.show()
		$GridContainer/ViewportContainer3.hide()
		$GridContainer/ViewportContainer4.hide()
		$GridContainer.columns = 2
	if Input.is_action_pressed("3Player"):
		$GridContainer/ViewportContainer2.show()
		$GridContainer/ViewportContainer3.show()
		$GridContainer/ViewportContainer4.hide()
		$GridContainer.columns = 2
	if Input.is_action_pressed("4Player"):
		$GridContainer/ViewportContainer2.show()
		$GridContainer/ViewportContainer3.show()
		$GridContainer/ViewportContainer4.show()
		$GridContainer.columns = 2
	
