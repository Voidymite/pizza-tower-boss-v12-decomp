function gml_api_print()
{
	var l_b = buffer_create(1024, buffer_grow, 1)
	var l_m = global.g_gml_sig_list
	var l_i = 0
	var l__g1 = ds_list_size(l_m)
	while (l_i < l__g1)
	{
	    buffer_write(l_b, buffer_text, ds_list_find_value(l_m, l_i))
	    buffer_write(l_b, buffer_u8, 13)
	    buffer_write(l_b, buffer_u8, 10)
	    l_i++
	}
	buffer_write(l_b, buffer_u8, 0)
	buffer_seek(l_b, buffer_seek_start, 0)
	var l_s = buffer_read(l_b, buffer_string)
	buffer_delete(l_b)
	return l_s;
}
