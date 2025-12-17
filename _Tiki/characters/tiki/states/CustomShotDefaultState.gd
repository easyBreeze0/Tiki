extends ObjectState

export var projSpeed = 10
var hit_something = false

func _frame_0():
	if host.get_facing_int() == -1:
		host.sprite.flip_h = true

func _tick():
	if not hit_something:
		if data:
			host.move_directly(data.x * projSpeed, data.y * projSpeed)
	
	var pos = host.get_pos()
	if pos.x <= -host.stage_width or pos.x >= host.stage_width:
		hit_something = true
		host.disable() 

func _on_hit_something(obj, hitbox):
	._on_hit_something(obj, hitbox)
	hit_something = true
	host.disable()
