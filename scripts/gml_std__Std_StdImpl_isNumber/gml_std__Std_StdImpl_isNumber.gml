function gml_std__Std_StdImpl_isNumber()
{
	var l_v = argument[0]
	return (is_real(l_v) || is_bool(l_v) || is_int32(l_v) || is_int64(l_v));
}
