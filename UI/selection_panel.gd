extends Control

signal object_selected(scene_path, texture_path)
signal panel_interaction_start
signal panel_interaction_end

func _ready():
	$TabContainer/Decor/GridContainer/Button.connect("pressed", Callable(self, "_on_button_object_1_pressed"))
	$TabContainer/Decor/GridContainer/Button2.connect("pressed", Callable(self, "_on_button_object_2_pressed"))
	$TabContainer/Decor/GridContainer/Button3.connect("pressed", Callable(self, "_on_button_object_3_pressed"))
	$TabContainer/Decor/GridContainer/Button4.connect("pressed", Callable(self, "_on_button_object_4_pressed"))
	$TabContainer/Decor/GridContainer/Button5.connect("pressed", Callable(self, "_on_button_object_5_pressed"))
	$TabContainer/Decor/GridContainer/Button6.connect("pressed", Callable(self, "_on_button_object_6_pressed"))
	$TabContainer/Decor/GridContainer/Button7.connect("pressed", Callable(self, "_on_button_object_7_pressed"))
	$TabContainer/Decor/GridContainer/Button8.connect("pressed", Callable(self, "_on_button_object_8_pressed"))
	$TabContainer/Decor/GridContainer/Button9.connect("pressed", Callable(self, "_on_button_object_9_pressed"))
	$TabContainer/Decor/GridContainer/Button10.connect("pressed", Callable(self, "_on_button_object_10_pressed"))
	$TabContainer/Decor/GridContainer/Button11.connect("pressed", Callable(self, "_on_button_object_11_pressed"))
	$TabContainer/Decor/GridContainer/Button12.connect("pressed", Callable(self, "_on_button_object_12_pressed"))
	$TabContainer/Decor/GridContainer/Button13.connect("pressed", Callable(self, "_on_button_object_13_pressed"))
	$TabContainer/Decor/GridContainer/Button14.connect("pressed", Callable(self, "_on_button_object_14_pressed"))
	$TabContainer/Decor/GridContainer/Button15.connect("pressed", Callable(self, "_on_button_object_15_pressed"))
	$TabContainer/Decor/GridContainer/Button16.connect("pressed", Callable(self, "_on_button_object_16_pressed"))
	$TabContainer/Decor/GridContainer/Button17.connect("pressed", Callable(self, "_on_button_object_17_pressed"))
	$TabContainer/Decor/GridContainer/Button18.connect("pressed", Callable(self, "_on_button_object_18_pressed"))
	$TabContainer/Decor/GridContainer/Button19.connect("pressed", Callable(self, "_on_button_object_19_pressed"))
	$TabContainer/Objects/GridContainer/Button3.connect("pressed", Callable(self, "_on_button_lobject_1_pressed"))
	$TabContainer/Objects/GridContainer/Button4.connect("pressed", Callable(self, "_on_button_lobject_2_pressed"))
	$TabContainer/Objects/GridContainer/Button5.connect("pressed", Callable(self, "_on_button_lobject_3_pressed"))
	$TabContainer/Objects/GridContainer/Button6.connect("pressed", Callable(self, "_on_button_lobject_4_pressed"))
	$TabContainer/Objects/GridContainer/Button7.connect("pressed", Callable(self, "_on_button_lobject_5_pressed"))
	$TabContainer/Objects/GridContainer/Button8.connect("pressed", Callable(self, "_on_button_lobject_6_pressed"))
	$TabContainer/Objects/GridContainer/Button9.connect("pressed", Callable(self, "_on_button_lobject_7_pressed"))
	$TabContainer/Objects/GridContainer/Button10.connect("pressed", Callable(self, "_on_button_lobject_8_pressed"))
	$TabContainer/Objects/GridContainer/Button11.connect("pressed", Callable(self, "_on_button_lobject_9_pressed"))
	$TabContainer/Objects/GridContainer/Button12.connect("pressed", Callable(self, "_on_button_lobject_10_pressed"))
	$TabContainer/Objects/GridContainer/Button13.connect("pressed", Callable(self, "_on_button_lobject_11_pressed"))
	$TabContainer/Objects/GridContainer/Button14.connect("pressed", Callable(self, "_on_button_lobject_12_pressed"))
	$TabContainer/Objects/GridContainer/Button15.connect("pressed", Callable(self, "_on_button_lobject_13_pressed"))
	$TabContainer/Objects/GridContainer/Button16.connect("pressed", Callable(self, "_on_button_lobject_14_pressed"))
	$TabContainer/Objects/GridContainer/Button17.connect("pressed", Callable(self, "_on_button_lobject_15_pressed"))
	$TabContainer/Objects/GridContainer/Button18.connect("pressed", Callable(self, "_on_button_lobject_16_pressed"))
	$TabContainer/Objects/GridContainer/Button19.connect("pressed", Callable(self, "_on_button_lobject_17_pressed"))
	$TabContainer/Objects/GridContainer/Button20.connect("pressed", Callable(self, "_on_button_lobject_18_pressed"))
	$TabContainer/Objects/GridContainer/Button21.connect("pressed", Callable(self, "_on_button_lobject_19_pressed"))
	$TabContainer/Objects/GridContainer/Button22.connect("pressed", Callable(self, "_on_button_lobject_20_pressed"))
	$TabContainer/Characters/Button4.connect("pressed", Callable(self, "_on_button_cobject_4_pressed"))
	$TabContainer/Characters/Button5.connect("pressed", Callable(self, "_on_button_cobject_5_pressed"))
	$TabContainer/Characters/Button6.connect("pressed", Callable(self, "_on_button_cobject_6_pressed"))
	$TabContainer/Characters/Button7.connect("pressed", Callable(self, "_on_button_cobject_7_pressed"))
	# Connect mouse enter/exit signals for the panel
	
#For DECOR
func _on_button_object_1_pressed():
	print("selected")
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_1.png")
func _on_button_object_2_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_2.png")
func _on_button_object_3_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_4.png")
func _on_button_object_4_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_5.png")
func _on_button_object_5_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_6.png")
func _on_button_object_6_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_3_1.png")
func _on_button_object_7_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_3_2.png")
func _on_button_object_8_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/rock_1.png")
func _on_button_object_9_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_7.png")
func _on_button_object_10_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_3_3.png")
func _on_button_object_11_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_3_4.png")
func _on_button_object_12_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/rock_2.png")
func _on_button_object_13_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/rock_3.png")
func _on_button_object_14_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/big_rock_1_1.png")
func _on_button_object_15_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/big_rock_1_2.png")
func _on_button_object_16_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_9.png")
func _on_button_object_17_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/sand_8.png")
func _on_button_object_18_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/big_rock_1_3.png")
func _on_button_object_19_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Decor/big_rock_1_4.png")

#For Object
func _on_button_lobject_1_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_1_1.png")
func _on_button_lobject_2_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_1_2.png")
func _on_button_lobject_3_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_2_1.png")
func _on_button_lobject_4_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_2_2.png")
func _on_button_lobject_5_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_1_3.png")
func _on_button_lobject_6_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_1_4.png")
func _on_button_lobject_7_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_2_3.png")
func _on_button_lobject_8_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_2_4.png")
func _on_button_lobject_9_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_3_1.png")
func _on_button_lobject_10_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_3_2.png")
func _on_button_lobject_11_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_4_1.png")
func _on_button_lobject_12_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_4_2.png")
func _on_button_lobject_13_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_3_3.png")
func _on_button_lobject_14_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_3_4.png")
func _on_button_lobject_15_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_4_3.png")
func _on_button_lobject_16_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_4_4.png")
func _on_button_lobject_17_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/house_5.png")
func _on_button_lobject_18_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/well_1.png")
func _on_button_lobject_19_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/tree_1.png")
func _on_button_lobject_20_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Objects/tree_3.png")

#For Chars
func _on_button_cobject_4_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Characters/Doctor.png")
func _on_button_cobject_5_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Characters/Technician.png")
func _on_button_cobject_6_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Characters/Warior.png")
func _on_button_cobject_7_pressed():
	emit_signal("object_selected", "res://scenes/placeable_object.tscn", "res://Objects/Characters/player.png")
# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	pass
