function gml_std_haxe_type_has()
{
	var l_obj = argument[0]
	if (array_length_1d(l_obj) < 1)
	    return 0;
	var l_meta = l_obj[0]
	return (array_length_1d(l_meta) >= 3 && is_array(l_meta[1]) && l_meta[1] == global.gml_std_haxe_type_markerValue);
}
