function gml_seek_eval_node_to_value()
{
	var l__g = argument[0]
	switch l__g[0]
	{
	    case 0:
	        return undefined;
	    case 1:
	        undefined = l__g[2]
	        return undefined;
	    case 2:
	        undefined = l__g[2]
	        return undefined;
	    case 13:
	        undefined = ds_map_find_value(global.g_gml_const_val, l__g[2])
	        return undefined;
	    case 12:
	        undefined = l__g[3]
	        return undefined;
	    default:
	        undefined = global.g_gml_seek_eval_invalid_value
	        return undefined;
	}
	
}
