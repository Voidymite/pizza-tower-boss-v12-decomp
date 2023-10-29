function gml_type_check_string()
{
	if is_string(argument[0])
	    return "";
	return "Expected a string";
}
