function gml_seek_eval_value_to_node()
{
	var l_val = argument[0]
	var l_d = argument[1]
	if gml_value_is_number(l_val)
	    return [1, l_d, l_val, undefined];
	else if is_string(l_val)
	    return [2, l_d, l_val];
	else if (l_val == undefined)
	    return [0, l_d];
	else
	    return undefined;
}
