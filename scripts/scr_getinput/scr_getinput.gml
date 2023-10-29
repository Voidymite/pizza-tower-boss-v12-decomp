function scr_getinput()
{
	gamepad_set_axis_deadzone(0, 0.4)
	key_up = (keyboard_check(global.key_up) || gamepad_button_check(0, global.key_upC) || gamepad_axis_value(0, gp_axislv) < 0)
	key_up2 = (keyboard_check_pressed(global.key_up) || gamepad_button_check_pressed(0, global.key_upC) || (gamepad_axis_value(0, gp_axislv) < -0.5 && stickpressed == 0))
	key_right = (keyboard_check(global.key_right) || gamepad_button_check(0, global.key_rightC) || gamepad_axis_value(0, gp_axislh) > 0)
	key_right2 = (keyboard_check_pressed(global.key_right) || gamepad_button_check_pressed(0, global.key_rightC) || (gamepad_axis_value(0, gp_axislh) > 0.5 && stickpressed == 0))
	key_left = (-((keyboard_check(global.key_left) || gamepad_button_check(0, global.key_leftC) || gamepad_axis_value(0, gp_axislh) < 0)))
	key_left2 = (-((keyboard_check_pressed(global.key_left) || gamepad_button_check_pressed(0, global.key_leftC) || (gamepad_axis_value(0, gp_axislh) < -0.5 && stickpressed == 0))))
	key_down = (keyboard_check(global.key_down) || gamepad_button_check(0, global.key_downC) || gamepad_axis_value(0, gp_axislv) > 0)
	key_down2 = (keyboard_check_pressed(global.key_down) || gamepad_button_check_pressed(0, global.key_downC) || (gamepad_axis_value(0, gp_axislv) > 0.5 && stickpressed == 0))
	key_jump = (keyboard_check_pressed(global.key_jump) || gamepad_button_check_pressed(0, global.key_jumpC))
	key_jump2 = (keyboard_check(global.key_jump) || gamepad_button_check(0, global.key_jumpC))
	key_slap = (keyboard_check(global.key_slap) || gamepad_button_check(0, global.key_slapC))
	key_slap2 = (keyboard_check_pressed(global.key_slap) || gamepad_button_check_pressed(0, global.key_slapC))
	key_taunt = (keyboard_check(global.key_taunt) || gamepad_button_check(0, global.key_tauntC))
	key_taunt2 = (keyboard_check_pressed(global.key_taunt) || gamepad_button_check_pressed(0, global.key_tauntC))
	key_attack = (keyboard_check(global.key_attack) || gamepad_button_check(0, global.key_attackC) || gamepad_button_check(0, gp_face2) || gamepad_button_check(0, gp_shoulderrb))
	key_attack2 = (keyboard_check_pressed(global.key_attack) || gamepad_button_check_pressed(0, global.key_attackC) || gamepad_button_check_pressed(0, gp_face2) || gamepad_button_check_pressed(0, gp_shoulderrb))
	key_shoot = (keyboard_check(global.key_shoot) || gamepad_button_check(0, global.key_shootC))
	key_shoot2 = (keyboard_check_pressed(global.key_shoot) || gamepad_button_check_pressed(0, global.key_shootC))
	key_start = (keyboard_check_pressed(global.key_start) || gamepad_button_check_pressed(0, global.key_startC))
	key_escape = (keyboard_check_pressed(vk_escape) || gamepad_button_check(0, gp_select))
	if (gamepad_axis_value(0, gp_axislh) > 0.5 || gamepad_axis_value(0, gp_axislh) < -0.5 || gamepad_axis_value(0, gp_axislv) > 0.5 || gamepad_axis_value(0, gp_axislv) < -0.5)
	    stickpressed = 1
	else
	    stickpressed = 0
}
