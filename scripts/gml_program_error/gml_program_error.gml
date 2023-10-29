function gml_program_error()
{
	var this = argument[0]
	var l_pos = argument[2]
	array_set(this, 11, ((gml_pos_to_string(l_pos) + " ") + argument[1]))
	array_set(this, 12, l_pos)
	return 1;
}
