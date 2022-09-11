extends Control


var scene1 = "res://scenes/scene1.tscn"
var settinggs = "res://scenes/settinggs.tscn"

func _on_Button_pressed():
	get_tree().change_scene(scene1)



func _on_Button2_pressed():
	get_tree().quit()


func _on_Button3_pressed():
	get_tree().change_scene(settinggs)
