extends BetterButton


func _on_press() -> void:
	($ResetDialog as ConfirmationDialog).visible = true
