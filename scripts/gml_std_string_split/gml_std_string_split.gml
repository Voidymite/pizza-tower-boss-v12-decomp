function gml_std_string_split()
{
	var this = argument[0]
	var l_del = argument[1]
	var l_str = this
	var l_num = 0
	var l_arr = array_create((string_count(l_del, l_str) + 1), 0)
	for (var l_pos = string_pos(l_del, l_str); l_pos > 0; l_pos = string_pos(l_del, l_str))
	{
	    array_set(l_arr, l_num, string_copy(l_str, 1, (l_pos - 1)))
	    l_num++
	    l_str = string_delete(l_str, 1, l_pos)
	}
	array_set(l_arr, l_num, l_str)
	return l_arr;
}
