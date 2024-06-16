extends TileMap

var MAP_WIDTH = 20
var MAP_HEIGHT = 10
var BASE_TILE_ID = 0 

@onready var tile_map = $"."
@onready var width_input = $"../UI/MapCreationPanel/VBoxContainer/WidthInput"
@onready var height_input = $"../UI/MapCreationPanel/VBoxContainer/HeightInput"
@onready var tile_id_input = $"../UI/MapCreationPanel/VBoxContainer/TileIDInput"

# Function to create the map
func _ready():
	print("Ready function called")

func _on_create_button_pressed():
	print("you pressed")
	var lineWidth = width_input.text
	var lineHeight = height_input.text
	var lineId = tile_id_input.text
	
	# Cheking not null's
	MAP_WIDTH = int(lineWidth) if lineWidth != "" and int(lineWidth) <= 30 else 10
	MAP_HEIGHT = int(lineHeight) if lineHeight != "" and int(lineHeight) <= 30 else 10
	BASE_TILE_ID = int(lineId) if lineId != "" and int(lineId) <= 6 else 0
	# Clear the map before creating a new one
	tile_map.clear()
	create_map()

func create_map():
	var layer = 0  # Default layer, you can change this if you have multiple layers
	var source_id = BASE_TILE_ID  # Use the same base tile for all cells
	var atlas_coords = Vector2i(0, 0)  # Use the same atlas coordinates for all cells
	var alternative_tile = 0  # Default alternative tile
	for x in range(MAP_WIDTH):
		for y in range(MAP_HEIGHT):
			set_cell(layer, Vector2i(x, y), source_id, atlas_coords, alternative_tile)
			print("Set tile at position: ", Vector2i(x, y), " with source ID: ", source_id)
