function gml_builder_create()
{
	var this = [global.mt_gml_builder]
	array_copy(this, 1, global.mq_gml_builder, 1, 11)
	var l_src = argument[0]
	array_set(this, 9, undefined)
	array_set(this, 8, [])
	array_set(this, 7, [])
	array_set(this, 6, [])
	array_set(this, 5, [])
	array_set(this, 3, 0)
	array_set(this, 2, l_src)
	if (l_src[6] != undefined)
	    array_set(this, 1, l_src[6])
	else
	    array_set(this, 1, gml_parser_run(l_src))
	if (this[1] != undefined)
	{
	    array_set(this, 4, array_length_1d(this[1]))
	    gml_builder_build_loop(this, l_src[3])
	}
	else
	{
	    array_set(this, 9, global.g_gml_parser_error_text)
	    array_set(this, 10, global.g_gml_parser_error_pos)
	}
	return this;
}
