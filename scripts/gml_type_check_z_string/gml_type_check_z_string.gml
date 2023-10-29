function gml_type_check_z_string()
{
	var l_v = argument[0]
	if (l_v == undefined || is_string(l_v))
	    return "";
	return "Expected a string or null";
}
