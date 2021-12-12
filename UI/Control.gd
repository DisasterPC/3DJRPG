extends Control
var enemyHealth = 100
var playerHealth = 70


func _ready():
	pass # Replace with function body.

func _physics_process(_delta):
	$ProgressBar.set_value(playerHealth)
	$ProgressBar2.set_value(enemyHealth)

func _on_Button_pressed():
	var player = get_node_or_null("/root/Battle/UncontrolledPlayer/AnimationPlayer")
	player.play("Shoot")
	player.queue("Idle")
	var enemy = get_node_or_null("/root/Battle/Enemy/AnimationPlayer")
	enemy.play("Death")
	enemyHealth = 0
	var new_dialog = Dialogic.start('battleWin')
	add_child(new_dialog)
