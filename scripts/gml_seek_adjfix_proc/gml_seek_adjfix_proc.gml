function gml_seek_adjfix_proc()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l__g = l_q
	switch l__g[0]
	{
	    case 25:
	        var l_x1 = l__g[2]
	        var l_d1 = l__g[1]
	        if (l_q[0] == 24)
	            var l_pre1 = 1
	        else
	            l_pre1 = 0
	        var l_inBlock1 = gml_node_is_in_block(l_x1, ds_list_find_value(l_st, 0))
	        if (l_pre1 || l_inBlock1)
	        {
	            var l__g41 = l_x1
	            switch l__g41[0]
	            {
	                case 78:
	                    var l_o1 = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [80, l_d1, l__g41[2], l__g41[3], l_o1, [1, l_d1, 1, undefined]])
	                    break
	                case 73:
	                    l_o1 = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [75, l_d1, l__g41[2], l__g41[3], l_o1, [1, l_d1, 1, undefined]])
	                    break
	                case 83:
	                    l_o1 = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [85, l_d1, l__g41[2], l__g41[3], l__g41[4], l_o1, [1, l_d1, 1, undefined]])
	                    break
	                default:
	                    if l_inBlock1
	                    {
	                        l_o1 = (l__g[3] ? 16 : 17)
	                        gml_std_haxe_enum_tools_set(l_q, [28, l_d1, l_o1, l_x1, [1, l_d1, 1, undefined]])
	                    }
	            }
	
	        }
	        break
	    case 24:
	        var l_x = l__g[2]
	        var l_d = l__g[1]
	        if (l_q[0] == 24)
	            var l_pre = 1
	        else
	            l_pre = 0
	        var l_inBlock = gml_node_is_in_block(l_x, ds_list_find_value(l_st, 0))
	        if (l_pre || l_inBlock)
	        {
	            var l__g4 = l_x
	            switch l__g4[0]
	            {
	                case 78:
	                    var l_o = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [80, l_d, l__g4[2], l__g4[3], l_o, [1, l_d, 1, undefined]])
	                    break
	                case 73:
	                    l_o = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [75, l_d, l__g4[2], l__g4[3], l_o, [1, l_d, 1, undefined]])
	                    break
	                case 83:
	                    l_o = (l__g[3] ? 16 : 17)
	                    gml_std_haxe_enum_tools_set(l_q, [85, l_d, l__g4[2], l__g4[3], l__g4[4], l_o, [1, l_d, 1, undefined]])
	                    break
	                default:
	                    if l_inBlock
	                    {
	                        l_o = (l__g[3] ? 16 : 17)
	                        gml_std_haxe_enum_tools_set(l_q, [28, l_d, l_o, l_x, [1, l_d, 1, undefined]])
	                    }
	            }
	
	        }
	        break
	}
	
	return gml_node_seek(l_q, l_st, global.g_gml_program_seek_func);
}
