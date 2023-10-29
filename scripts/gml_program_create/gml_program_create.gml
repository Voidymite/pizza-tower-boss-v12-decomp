function gml_program_create()
{
	var this = [global.mt_gml_program]
	array_copy(this, 1, global.mq_gml_program, 1, 15)
	var l_sources = argument[0]
	array_set(this, 13, 0)
	array_set(this, 11, undefined)
	array_set(this, 10, undefined)
	array_set(this, 9, undefined)
	array_set(this, 8, ds_list_create())
	array_set(this, 7, ds_list_create())
	array_set(this, 6, ds_map_create())
	array_set(this, 5, ds_map_create())
	array_set(this, 4, [])
	array_set(this, 3, ds_map_create())
	array_set(this, 2, [])
	array_set(this, 1, undefined)
	array_set(this, 1, l_sources)
	var l_builders = []
	var l__g = 0
	while (l__g < array_length_1d(l_sources))
	{
	    var l_src = l_sources[l__g]
	    l__g++
	    var l_b = gml_builder_create(l_src)
	    gml_std_array_hx_push(l_builders, l_b)
	    if (l_b[9] == undefined)
	    {
	        var l_main = l_src[3]
	        var l__g1 = 0
	        var l__g11 = l_b[5]
	        while (l__g1 < array_length_1d(l__g11))
	        {
	            var l_scr = l__g11[l__g1]
	            l__g1++
	            if ds_map_exists(this[3], l_scr[1])
	            {
	                if (l_scr[1] == l_main)
	                {
	                    var l__g2 = gml_std_haxe_boot_wget(ds_map_find_value(this[3], l_main), 4)
	                    if (l__g2[0] == 89)
	                        var l_tmp = array_length_1d(l__g2[2]) == 0
	                    else
	                        l_tmp = 0
	                    if l_tmp
	                    {
	                        var l_w = this[2]
	                        var l_i = 0
	                        var l_n = array_length_1d(l_w)
	                        while (l_i < l_n)
	                        {
	                            if (gml_std_haxe_boot_wget(l_w[l_i], 1) == l_main)
	                            {
	                                while (++l_i < l_n)
	                                    array_set(l_w, (l_i - 1), l_w[l_i])
	                                array_set(l_w, (l_n - 1), l_scr)
	                            }
	                            else
	                                l_i++
	                        }
	                        ds_map_set(this[3], l_scr[1], l_scr)
	                    }
	                    else
	                    {
	                        gml_program_error(this, (("Cannot override prefix-script \"" + l_main) + "\" because it is not empty"), l_scr[2])
	                        return this;
	                    }
	                }
	                else
	                {
	                    gml_program_error(this, ((("Script " + l_scr[1]) + " is already defined at ") + gml_pos_to_string(gml_std_haxe_boot_wget(ds_map_find_value(this[3], l_scr[1]), 2))), l_scr[2])
	                    return this;
	                }
	            }
	            else
	            {
	                gml_std_array_hx_push(this[2], l_scr)
	                ds_map_set(this[3], l_scr[1], l_scr)
	            }
	        }
	        var l__g21 = 0
	        var l__g3 = l_b[6]
	        while (l__g21 < array_length_1d(l__g3))
	        {
	            var l_e = l__g3[l__g21]
	            l__g21++
	            gml_std_array_hx_push(this[4], l_e)
	            ds_map_set(this[5], l_e[1], l_e)
	        }
	        var l_mcrNames = l_b[7]
	        var l_mcrNodes = l_b[8]
	        var l_mcrMap = this[6]
	        var l_i1 = 0
	        var l__g5 = array_length_1d(l_mcrNames)
	        while (l_i1 < l__g5)
	        {
	            ds_map_set(l_mcrMap, l_mcrNames[l_i1], l_mcrNodes[l_i1])
	            l_i1++
	        }
	    }
	    else if l_src[5]
	    {
	        var l_errorNext = l_b[9]
	        if (this[11] != undefined)
	            array_set(this, 11, (array_get(this, 11) + ("\n" + l_errorNext)))
	        else
	            array_set(this, 11, l_errorNext)
	    }
	    else
	    {
	        array_set(this, 11, l_b[9])
	        array_set(this, 12, l_b[10])
	        return this;
	    }
	}
	var l_n1 = array_length_1d(this[2])
	for (var l_i2 = 0; l_i2 < l_n1; l_i2++)
	    gml_std_haxe_boot_wset(gml_std_haxe_boot_wget(this[2], l_i2), 3, l_i2)
	if gml_program_check(this)
	{
	    global.g_gml_program_seek_inst = undefined
	    return this;
	}
	else if gml_compile_program(this)
	{
	    if (this[11] != undefined)
	        array_set(this, 11, (array_get(this, 11) + ("\n" + global.g_gml_compile_error_text)))
	    else
	        array_set(this, 11, global.g_gml_compile_error_text)
	    array_set(this, 12, global.g_gml_compile_error_pos)
	    return this;
	}
	array_set(this, 13, 1)
	return this;
}
