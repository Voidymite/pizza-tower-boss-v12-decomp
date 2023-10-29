function gml_value_is_number()
{
	var l_this1 = argument[0]
	return (is_real(l_this1) || is_int64(l_this1) || is_bool(l_this1) || is_int32(l_this1));
}
