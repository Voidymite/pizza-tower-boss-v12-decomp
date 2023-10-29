function gml_builder_error_at()
{
	var this = argument[0]
	var l_pos = argument[2]
	array_set(this, 9, ((gml_pos_to_string(l_pos) + ": ") + argument[1]))
	array_set(this, 10, l_pos)
	return 1;
}
