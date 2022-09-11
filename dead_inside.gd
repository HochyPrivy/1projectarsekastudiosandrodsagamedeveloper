extends Control

var scene1 = "res://scenes/scene1.tscn"
var menu = "res://scenes/menu.tscn"

func _on_Button_pressed():
	get_tree().change_scene(scene1)


func _on_Button2_pressed2():
	get_tree().change_scene(menu)
