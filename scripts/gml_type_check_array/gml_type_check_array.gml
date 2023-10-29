function gml_type_check_array()
{
	if is_array(argument[0])
	    return "";
	return "Expected an array";
}
