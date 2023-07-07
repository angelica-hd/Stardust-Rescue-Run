extends Control

var sfx_bus = AudioServer.get_bus_index("SFX")
	
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(sfx_bus, value)
	if value == -30:
		AudioServer.set_bus_mute(sfx_bus,true)
	else:
		AudioServer.set_bus_mute(sfx_bus,false)
