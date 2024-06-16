extends Node2D

@onready var width_input = $UI/MapCreationPanel/VBoxContainer/WidthInput
@onready var tile_id_input = $UI/MapCreationPanel/VBoxContainer/TileIDInput
@onready var height_input = $UI/MapCreationPanel/VBoxContainer/HeightInput
@onready var selection_panel = $UI/SelectionPanel
var preview_object = null
var selected_scene_path = null
var selected_texture_path = null
var can_place = false  # Flag to track if placement is allowed
var GRID_WIDTH = 0
var GRID_HEIGHT = 0

var occupied_cells = {}  # Dictionary to keep track of occupied cells

const PLACED_OBJECT_GROUP = "placed_objects" 
const GRID_SIZE = 64
const SAVE_FILE_PATH = "user://save_game.json"  # File path for saving the game

func _ready():
	selection_panel.connect("object_selected", Callable(self, "_on_object_selected"))
	selection_panel.connect("panel_interaction_start", Callable(self, "_on_panel_interaction_start"))
	selection_panel.connect("panel_interaction_end", Callable(self, "_on_panel_interaction_end"))
	create_preview_object()



func _on_object_selected(scene_path, texture_path):
	print("on obj select check")
	selected_scene_path = scene_path
	selected_texture_path = texture_path
	can_place = true  # Allow placement now
	create_preview_object()
	if preview_object:
		preview_object.call("load_texture", selected_texture_path)


func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_RIGHT and event.pressed and can_place:
		var grid_position = snap_to_grid(get_global_mouse_position())
		if is_within_boundaries(grid_position) and not is_cell_occupied(grid_position):
			place_object(grid_position)
		elif is_within_boundaries(grid_position) and is_cell_occupied(grid_position):
			delete_object_at(grid_position)

func place_object(position: Vector2):
	print("obj placed")
	var new_object = load(selected_scene_path).instantiate()
	add_child(new_object)
	new_object.call("load_texture", selected_texture_path)
	new_object.position = position + Vector2(GRID_SIZE / 2, GRID_SIZE / 2)
	new_object.add_to_group(PLACED_OBJECT_GROUP)  # Add to the group
	occupied_cells[snap_to_grid(position)] = new_object  # Mark the cell as occupied
	
func is_within_boundaries(position: Vector2) -> bool:
	var cell_x = position.x / GRID_SIZE
	var cell_y = position.y / GRID_SIZE
	return cell_x >= 0 and cell_x < GRID_WIDTH and cell_y >= 0 and cell_y < GRID_HEIGHT
	
func is_cell_occupied(position: Vector2) -> bool:
	return occupied_cells.has(position)
	
func _on_create_button_pressed():
	var lineWidth = width_input.text
	var lineHeight = height_input.text
	delete_all_objects()
	GRID_WIDTH = int(lineWidth) if lineWidth != "" and int(lineWidth) <= 30 else 10
	GRID_HEIGHT = int(lineHeight) if lineHeight != "" and int(lineHeight) <= 30 else 10
	
func delete_object_at(position: Vector2):
	var obj_position = snap_to_grid(position)
	if occupied_cells.has(obj_position):
		var obj = occupied_cells[obj_position]
		occupied_cells.erase(obj_position)
		obj.queue_free()

func snap_to_grid(position: Vector2) -> Vector2:
	return Vector2(round(position.x / GRID_SIZE) * GRID_SIZE, round(position.y / GRID_SIZE) * GRID_SIZE)

func create_preview_object():
	print("preview check")
	if preview_object:
		print("queue freed")
		preview_object.queue_free()
	if selected_scene_path:
		preview_object = load(selected_scene_path).instantiate()
		add_child(preview_object)
		preview_object.modulate = Color(1, 1, 1, 0.5)  # Make the preview object semi-transparent

func _process(delta):
	update_preview_position()
	
func update_preview_position():
	if preview_object and can_place:
		var grid_position = snap_to_grid(get_global_mouse_position())
		
		if is_within_boundaries(grid_position):
			preview_object.modulate = Color(1, 1, 1, 0.5)
		else:
			preview_object.modulate = Color(1, 0, 0, 0.5)
		preview_object.position = grid_position + Vector2(GRID_SIZE / 2, GRID_SIZE / 2)

#func _draw():
	#var width = get_viewport_rect().size.x
	#var height = get_viewport_rect().size.y
	#for x in range(0, width, GRID_SIZE):
		#draw_line(Vector2(x, 0), Vector2(x, height), Color(1, 1, 1, 0.2))
	#for y in range(0, height, GRID_SIZE):
		#draw_line(Vector2(0, y), Vector2(width, y), Color(1, 1, 1, 0.2))

func delete_all_objects():
	var placed_objects = get_tree().get_nodes_in_group(PLACED_OBJECT_GROUP)
	for obj in placed_objects:
		obj.queue_free()

func _on_save_map_pressed():
	save_map()

#func _on_load_map_pressed():
	#load_map()
	
func save_map():
	var save_data = []
	var placed_objects = get_tree().get_nodes_in_group(PLACED_OBJECT_GROUP)
	for obj in  placed_objects:
		var obj_data = {
			"position": obj.position - Vector2(GRID_SIZE / 2, GRID_SIZE / 2),
			"scene_path": obj.get_meta("scene_path"),
			"texture+path": obj.get_meta("texture_path")
		}
		save_data.append(obj_data)
	var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.WRITE)
	file.store_string(JSON.stringify(save_data))
	file.close()
	print("Game Saved")
	
#func load_map():
	#var file = FileAccess.open(SAVE_FILE_PATH, FileAccess.READ)
	#if file:
		#var json_result = JSON.parse(file.get_as_text())
		#
