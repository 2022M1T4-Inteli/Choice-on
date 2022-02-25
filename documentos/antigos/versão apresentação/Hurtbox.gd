extends Area2D

const whiten_duration = 0.15
export (ShaderMaterial) var whiten_material

func _on_Hurtbox_area_entered(area: Area2D) -> void:
	whiten_material.set_shader_param("whiten", true)
	yield(get_tree().create_timer(whiten_duration), "timeout")
	whiten_material.set_shader_param("whiten", false)
