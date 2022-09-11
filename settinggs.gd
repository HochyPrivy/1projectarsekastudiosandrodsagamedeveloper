extends Control


var menu = "res://scenes/menu.tscn"
var autors = "res://scenes/autors.tscn"

func _on_Button_pressed4():
	get_tree().change_scene(menu)


func _on_Button2_pressed():
	get_tree().change_scene(autors)
