function gml_std_array_hx_push()
{
	var l_arr = argument[0]
	var l_i = array_length_1d(l_arr)
	array_set(l_arr, l_i, argument[1])
	return l_i;
}
