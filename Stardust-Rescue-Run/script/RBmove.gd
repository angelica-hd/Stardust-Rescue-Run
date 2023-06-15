class_name SpaceShip
extends RigidBody2D

var monitos = 0;
@onready var animation_player = $AnimationPlayer
@onready var atrapar = $Area2D
@onready var pivote = $Node2D
@onready var Fueld = $CanvasLayer/Fueld
@onready var cont = $CanvasLayer/MarginContainer/contador
@onready var text = $CanvasLayer3/tutorialText
@onready var catch = $Catch


var t0 = 0
var moved = false
var catched = false
var escaped = false

const max_fueld = 100
var fueld = 100:
	set(value):
		fueld = value
		Fueld.set_fueld(fueld)
	get:
		return fueld

# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("fueguito")
	var pos = position

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _physics_process(delta): # CON PHYSICS PROCESS FUNCIONA SIEMPRE PERO EL PROFE DIJO QUE SE OCUPABA ESTE
	move()
	fueld -= (delta)
	cont.text = "Monitos: "+str(monitos)+"/"+str(Game.get_level_monitos())
	if fueld < 0:
		get_tree().change_scene_to_file("res://scenes/game_over_menu.tscn")
		
	if Game.get_level() == 1: # PARA NIVEL TUTORIAL
		if moved == false:
			text.text = "Presiona las flechas hacia arriba, abajo, derecha e
			 izquierda para moverte y explorar el mapa"
		elif catched == false:
			text.text = "Presiona C para atrapar un alien cuando lo tengas cerca,
			 cuidado con las gravedades de los planetas!"
		elif escaped == false: # VA CAMBIANDO ENTRE LOS 3 MENSAJES CADA 4 SEGUNDOS
			t0 += delta
			if t0 < 4:
				text.text = "Explora el mapa para encontrar los aliens y la salida,
				 cuidado con las gravedades de los planetas!"
			elif t0 < 8:
				text.text = "Puedes ver cuantos aliens quedan por rescatar en la
				 esquina superior derecha"
			elif t0 < 12:
				text.text = "Rescata todos los aliens para activar la salida y
				 escapa antes que se agote la gasolina de tu nave"
			else:
				t0 = 0


func move():
	if Input.is_action_pressed('ui_right'):
		moved = true
		apply_central_impulse(Vector2(4, 0))
		pivote.rotation = 0
		pivote.scale.x = 1
	
	if Input.is_action_pressed('ui_left'):
		moved = true
		apply_central_impulse(Vector2(-4,0))
		pivote.rotation = 0
		pivote.scale.x = -1
	
	if Input.is_action_pressed('ui_up'):
		moved = true
		apply_central_impulse(Vector2(0, -4))
		pivote.scale.x = 1
		pivote.rotation = -89.55
	
	if Input.is_action_pressed('ui_down'):
		moved = true
		apply_central_impulse(Vector2(0, 4))
		pivote.scale.x = 1
		pivote.rotation = 89.55

func _input(event):
	if event.is_action_pressed("catch"):
		for body in atrapar.get_overlapping_bodies():
			if body is Monito:
				entro_monito(body)
				

func entro_monito(body):
	#Game.add_monitos(body)
	catch.play()
	body.queue_free()
	monitos += 1
	fueld += 10
	if fueld > 100:
		fueld = 100
	catched = true
	
