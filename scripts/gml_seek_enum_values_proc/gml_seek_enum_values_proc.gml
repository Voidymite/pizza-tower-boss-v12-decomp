function gml_seek_enum_values_proc()
{
	var l__g = 0
	var l__g1 = global.g_gml_program_seek_inst[4]
	while (l__g < array_length_1d(l__g1))
	{
	    var l_e = l__g1[l__g]
	    l__g++
	    var l_next = 0
	    var l__g2 = 0
	    var l__g11 = l_e[3]
	    while (l__g2 < array_length_1d(l__g11))
	    {
	        var l_c = l__g11[l__g2]
	        l__g2++
	        if (l_c[3] != undefined)
	        {
	            var l_st = ds_list_create()
	            var l__seekFunc = global.g_gml_program_seek_func
	            global.g_gml_program_seek_func = global.f_gml_seek_idents_proc
	            global.g_gml_program_seek_script = undefined
	            gml_seek_idents_proc(l_c[3], l_st)
	            global.g_gml_program_seek_func = l__seekFunc
	            ds_list_destroy(l_st)
	            gml_seek_eval_eval(l_c[3])
	            var l_v = gml_seek_eval_node_to_value(l_c[3])
	            if gml_value_is_number(l_v)
	            {
	                array_set(l_c, 4, floor(l_v))
	                l_next = (l_c[4] + 1)
	            }
	            else if (l_v != global.g_gml_seek_eval_invalid_value)
	                return gml_program_error(global.g_gml_program_seek_inst, "Enum values should be integer", gml_std_haxe_boot_wget(l_c[3], 1));
	            else
	                return gml_program_error(global.g_gml_program_seek_inst, "Enum values should be constant", gml_std_haxe_boot_wget(l_c[3], 1));
	        }
	        else
	            array_set(l_c, 4, l_next++)
	    }
	}
	return 0;
}
