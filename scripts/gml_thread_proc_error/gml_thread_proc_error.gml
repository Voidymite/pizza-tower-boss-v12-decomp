function gml_thread_proc_error()
{
	var this = argument[0]
	var l_act = argument[2]
	var l_pos = l_act[1]
	array_set(this, 7, ((gml_pos_to_string(l_pos) + " ") + argument[1]))
	array_set(this, 8, l_pos)
	array_set(this, 2, 4)
	return 0;
}
