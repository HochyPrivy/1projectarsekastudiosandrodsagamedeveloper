extends Control

var menu = "res://scenes/menu.tscn"


func _on_Button_pressed():
	get_tree().change_scene(menu)
