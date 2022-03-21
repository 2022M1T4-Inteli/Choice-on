extends Control

var dialog = [
	'oh hi mark',
	'its been a while'
]

var dialogNumber = 0
var finished = false

func _ready():
	load_dialog()
	
func _process(delta):
	$"Ind".visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()
		
func load_dialog():
	if dialogNumber < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialogNumber]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 1, 
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
	dialogNumber += 1
	
func _on_Tween_tween_completed(object, key):
	finished = true
