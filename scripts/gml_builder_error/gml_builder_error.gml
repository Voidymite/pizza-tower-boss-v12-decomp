function gml_builder_error()
{
	var this = argument[0]
	var l_tk = argument[2]
	return gml_builder_error_at(this, argument[1], l_tk[1]);
}
