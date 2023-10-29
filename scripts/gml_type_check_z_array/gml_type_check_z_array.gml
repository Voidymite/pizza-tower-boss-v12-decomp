function gml_type_check_z_array()
{
	var l_v = argument[0]
	if (l_v == undefined || is_array(l_v))
	    return "";
	return "Expected an array or null";
}
