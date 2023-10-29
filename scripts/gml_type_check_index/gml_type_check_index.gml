function gml_type_check_index()
{
	var l_v = argument[0]
	if (is_bool(l_v) || is_int64(l_v) || is_int32(l_v) || (is_real(l_v) && (l_v % 1) == 0))
	    return "";
	return "Expected an index";
}
