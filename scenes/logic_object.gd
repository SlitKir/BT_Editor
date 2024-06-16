extends Node2D

@export var texture_path: String = ""
@onready var sprite = $LogicSprite

func _ready():
	if texture_path != "":
		load_texture(texture_path)

func load_texture(texture_path: String):
	var texture = load(texture_path) as Texture2D
	if texture:
		sprite.texture = texture

# Add additional logic here
func _process(delta):
	# Example logic
	rotation += delta
