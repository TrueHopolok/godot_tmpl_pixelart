class_name LoopingAudioPlayer
extends AudioStreamPlayer

@export var _intro: AudioStream
@export var _loop: AudioStream


func _ready() -> void:
	finished.connect(
		func() -> void:
			stream = _loop
			play()
	)
	stream = _intro
	if autoplay:
		play()


## Starts the player with _intro audio stream.
## Function is not affected by current state of the player.
func reset() -> void:
	stream = _loop
	play()


## Starts the player with _intro audio stream.
## Does nothing if was already playing.
func start() -> void:
	if playing:
		return
	reset()
