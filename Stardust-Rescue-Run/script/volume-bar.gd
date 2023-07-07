extends Control

var Niveles_bus = AudioServer.get_bus_index("Niveles")
@onready var h_slider = $HSlider
	
func _ready():
	h_slider.value =AudioServer.get_bus_volume_db(Niveles_bus)
	
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(Niveles_bus, value)
	if value == -30:
		AudioServer.set_bus_mute(Niveles_bus,true)
	else:
		AudioServer.set_bus_mute(Niveles_bus,false)
