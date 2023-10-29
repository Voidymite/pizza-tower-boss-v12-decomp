function live_execute_string()
{
	var l_pg = gml_program_create([gml_source_create("execute_string", argument[0], "execute_string")])
	if (l_pg[11] == undefined)
	{
	    var l_args1 = array_create(0)
	    if ds_map_exists(l_pg[3], "execute_string")
	    {
	        var l_scr = ds_map_find_value(l_pg[3], "execute_string")
	        var l_locals = array_create(l_scr[7])
	        l_args1 = gml_value_list_copy(l_args1)
	        var l_th1 = gml_thread_create(l_pg, l_scr[10], l_args1, l_locals)
	        array_set(l_th1, 3, l_pg[9])
	        array_set(l_th1, 6, l_pg[10])
	        gml_thread_exec(l_th1)
	        var l_th = l_th1
	    }
	    else
	        l_th = undefined
	    if (l_th[2] == 3)
	    {
	        var l_ok = 1
	        global.g_live_result = l_th[1]
	    }
	    else
	    {
	        l_ok = 0
	        global.g_live_result = l_th[7]
	        if (global.g_live_result == undefined)
	            global.g_live_result = "(unknown error)"
	    }
	}
	else
	{
	    l_ok = 0
	    global.g_live_result = l_pg[11]
	}
	gml_program_destroy(l_pg)
	return l_ok;
}
