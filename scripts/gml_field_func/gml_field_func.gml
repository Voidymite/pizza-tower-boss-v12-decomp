function gml_field_func()
{
	var l_obj;
	var l_inst = argument[0]
	var l_field = argument[1]
	var l_set = argument[2]
	var l_val = argument[3]
	with (l_inst)
	{
	    if l_set
	        variable_instance_set(id, l_field, l_val)
	    else if variable_instance_exists(id, l_field)
	        l_val = variable_instance_get(id, l_field)
	    else
	        gml_thread_error((((((("`" + gml_std_Std_string(l_inst)) + "` (") + object_get_name(object_index)) + ") does not have a variable `") + l_field) + "`"))
	    return l_val;
	}
}
