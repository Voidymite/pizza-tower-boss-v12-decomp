function gml_type_check_z_number()
{
	var l_v = argument[0]
	if (l_v == undefined || gml_value_is_number(l_v))
	    return "";
	return "Expected a number or null";
}
