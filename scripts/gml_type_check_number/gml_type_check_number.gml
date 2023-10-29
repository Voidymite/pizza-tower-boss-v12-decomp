function gml_type_check_number()
{
	if gml_value_is_number(argument[0])
	    return "";
	return "Expected a number";
}
