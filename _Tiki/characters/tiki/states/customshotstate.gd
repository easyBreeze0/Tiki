extends CharacterState

export var _c_CustomShot = 0
export (PackedScene) var CustomShot
export var projPosX = 0
export var projPosY = 0

func _frame_4():
	host.spawn_object(CustomShot, projPosX, projPosY)
