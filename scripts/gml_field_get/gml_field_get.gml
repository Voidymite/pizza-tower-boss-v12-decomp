function gml_field_get()
{
	var l_field = argument[1]
	var l_defValue = argument[2]
	with (argument[0])
	{
	    if variable_instance_exists(id, l_field)
	        return variable_instance_get(id, l_field);
	    else
	        return l_defValue;
	}
}
