function gml_builder_expect_node()
{
	var this = argument[0]
	var l_node = argument[2]
	return gml_builder_error_at(this, ((("Expected " + argument[1]) + ", got ") + global.g_gml_node_names[l_node[0]]), l_node[1]);
}
