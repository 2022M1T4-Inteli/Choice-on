extends ColorRect

export var dialogPath = ""
export(float) var textspeed = 0.06

var dialog

var phrasenum = 0
var finished = false

func _ready():
	
	$Timer.wait_time = textspeed
	dialog = getdialog()
	assert(dialog,"Dialog not found")
	nextphrase()

func _process(delta):
	
	if Input.is_key_pressed(KEY_E):
		if finished:
			nextphrase()
		else:
			$Text.visible_characters = len($Text.text)


func getdialog() -> Array:
	var f = File.new()
	assert(f.file_exists(dialogPath),"File path does not exist")
	
	
	f.open(dialogPath, File.READ)
	var json = f.get_as_text()
	
	var output = parse_json(json)
	
	if typeof(output) == TYPE_ARRAY:
		return output
	else:
		return[]
	
func nextphrase():
	if phrasenum >= len(dialog):
		queue_free()
		return
		
	finished = false
	
	
	$Text.bbcode_text = dialog[phrasenum]["Text"]
	
	$Text.visible_characters = 0
	
	while $Text.visible_characters < len ($Text.text):
		$Text.visible_characters += 1
		
		$Timer.start()
		yield($Timer, "timeout")
	finished = true
	phrasenum += 1
	pass 
