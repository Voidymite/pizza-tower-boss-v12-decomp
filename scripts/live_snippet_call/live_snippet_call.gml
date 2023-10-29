function live_snippet_call()
{
	var l_snippet = argument[0]
	var l_argc = (argument_count - 1)
	var l_args2 = array_create(l_argc)
	var l_i = 0
	repeat l_argc
	{
	    array_set(l_args2, l_i, argument[(l_i + 1)])
	    l_i++
	}
	if ds_map_exists(l_snippet[3], "")
	{
	    var l_scr = ds_map_find_value(l_snippet[3], "")
	    var l_th1 = gml_thread_create(l_snippet, l_scr[10], l_args2, array_create(l_scr[7]))
	    array_set(l_th1, 3, l_snippet[9])
	    array_set(l_th1, 6, l_snippet[10])
	    gml_thread_exec(l_th1)
	    var l_th = l_th1
	}
	else
	    l_th = undefined
	if (l_th[2] == 3)
	{
	    global.g_live_result = l_th[1]
	    return 1;
	}
	else
	{
	    global.g_live_result = l_th[7]
	    if (global.g_live_result == undefined)
	        global.g_live_result = "(unknown error)"
	    return 0;
	}
}
