function gml_program_change_time_tags()
{
	var this = argument[0]
	var l_list = this[7]
	var l_n = ds_list_size(l_list)
	for (var l_i = 0; l_i < l_n; l_i++)
	{
	    var l_th = ds_list_find_value(l_list, l_i)
	    if (l_th[6] == argument[1])
	        array_set(l_th, 6, argument[2])
	}
}
