extends Control


var menu_bus = AudioServer.get_bus_index("Menu")
	
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(menu_bus, value)
	if value == -30:
		AudioServer.set_bus_mute(menu_bus,true)
	else:
		AudioServer.set_bus_mute(menu_bus,false)
