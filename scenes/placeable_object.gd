extends Node2D

@export var texture_path: String = ""
@onready var sprite = $ObjectSprite

func _ready():
	print("texture loaded")
	if texture_path != "":
		load_texture(texture_path)

func load_texture(texture_path: String):
	var texture = load(texture_path) as Texture2D
	if texture:
		sprite.texture = texture
