extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var enemy = get_node_or_null("Enemy/AnimationPlayer")
	enemy.play("Death")
	var new_dialog = Dialogic.start('ending')
	add_child(new_dialog)

func _physics_process(_delta):
	$Camera.transform.origin += Vector3(0,.001,0)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	get_tree().quit()
