function gml_parser_buf_sub()
{
	var l_buf = argument[0]
	var l_str = argument[1]
	var l_start = argument[2]
	var l_len = (argument[3] - l_start)
	buffer_copy(l_buf, l_start, l_len, l_str, 0)
	buffer_poke(l_str, l_len, buffer_u8, 0)
	buffer_seek(l_str, buffer_seek_start, 0)
	return buffer_read(l_str, buffer_string);
}
