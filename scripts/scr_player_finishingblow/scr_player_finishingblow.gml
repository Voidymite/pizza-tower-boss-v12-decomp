function scr_player_finishingblow()
{
	hsp = 0
	vsp = 0
	if (floor(image_index) == (image_number - 1))
	    state = states.normal
	if (floor(image_index) == 6 && (!instance_exists(obj_swordhitbox)))
	{
	    scr_soundeffect(sfx_punch)
	    scr_soundeffect(sfx_killingblow)
	    with (instance_create(x, y, obj_swordhitbox))
	        playerid = other.object_index
	}
	if (floor(image_index) == 0 && (!instance_exists(obj_swordhitbox)) && sprite_index == spr_swingdingend)
	{
	    scr_soundeffect(sfx_killingblow)
	    with (instance_create(x, y, obj_swordhitbox))
	        playerid = other.object_index
	}
	image_speed = 0.35
	landAnim = 0
}
