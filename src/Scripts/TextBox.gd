extends CanvasLayer

const charReadRate = 0.07

onready var textBoxContainer = $TextBoxContainer
onready var label = $TextBoxContainer/MarginContainer/HBoxContainer/Label

enum State{
	Ready,
	Reading,
	FINISHED
}

var currentState = State.Ready
var textQueue = []

func _ready():
	print('Starting State: State.Ready')
	queueText('  O allan roubou pao na casa do joao awd sa wdas dwasd awd sa wdas w das da w')
	queueText(' quem eu?')
	queueText(' voce')
	queueText(' eu nao')
	queueText(' entao quem foi?')

func _process(delta):
	match currentState:
		State.Ready:
			if !textQueue.empty():
				displayText()
		State.Reading:
			if Input.is_action_just_pressed("ui_accept"):
				label.percent_visible = 1.0
				$Tween.remove_all()
				changeState(State.FINISHED)
		State.FINISHED:
			if Input.is_action_just_pressed("ui_accept"):
				changeState(State.Ready)

func queueText(nextText):
	textQueue.push_back(nextText)

func displayText():
	var nextText = textQueue.pop_front()
	label.text = nextText
	label.percent_visible = 0.0
	changeState(State.Reading)
	$Tween.interpolate_property(label, 'percent_visible', 0.0, 1.0, len(nextText) * charReadRate, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
	
func changeState(nextState):
	currentState = nextState
	match currentState:
		State.Ready:
			print('Changing State to: State.Ready')
		State.Reading:
			print('Changing State to: State.Reading')
		State.FINISHED:
			print('Changing State to: State.FINISHED')


func _on_Tween_tween_all_completed():
	changeState(State.FINISHED)
