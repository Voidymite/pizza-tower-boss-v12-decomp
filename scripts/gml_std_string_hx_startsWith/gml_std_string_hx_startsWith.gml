function gml_std_string_hx_startsWith()
{
	var l_s = argument[0]
	var l_z = argument[1]
	var l_n = string_length(l_z)
	return (string_length(l_s) >= l_n && string_copy(l_s, 1, l_n) == l_z);
}
