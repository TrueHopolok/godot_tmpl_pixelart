extends BetterButton


func _on_press() -> void:
	($ReturnDialog as ConfirmationDialog).visible = true
