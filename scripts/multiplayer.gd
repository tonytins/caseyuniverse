extends Node

# These signals can be connected to by a UI lobby scene or the game scene.
signal player_connected(peer_id, player_info)
signal player_disconnected(peer_id)
signal server_disconnected

const PORT = 7000
const DEFAULT_SERVER_IP = "127.0.0.1" # IPv4 localhost
const MAX_CONNECTIONS = 20

var players = {}
var player_info = {"name": "Name"}
var players_loaded = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	if multiplayer.is_server():
		print_once_per_client()
		
@rpc
func print_once_per_client():
	print("I will be printed to the console once per each connected client.")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
