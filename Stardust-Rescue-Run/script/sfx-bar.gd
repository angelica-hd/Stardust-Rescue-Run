extends HSlider

var sfx_bus = AudioServer.get_bus_index("SFX")
@onready var h_slider = $"."

func _ready():
	h_slider.value =AudioServer.get_bus_volume_db(sfx_bus)

func _on_value_changed(value):
	AudioServer.set_bus_volume_db(sfx_bus, value)
	if value == -30:
		AudioServer.set_bus_mute(sfx_bus,true)
	else:
		AudioServer.set_bus_mute(sfx_bus,false)

