function live_room_loader_run_cc()
{
	var l_ccPath = argument[1]
	var l_ccProgram = gml_program_create([gml_source_create(l_ccPath, argument[0], l_ccPath)])
	var l_ccError = l_ccProgram[11]
	if (l_ccError == undefined)
	{
	    var l_args1 = array_create(0)
	    if ds_map_exists(l_ccProgram[3], l_ccPath)
	    {
	        var l_scr = ds_map_find_value(l_ccProgram[3], l_ccPath)
	        var l_locals = array_create(l_scr[7])
	        l_args1 = gml_value_list_copy(l_args1)
	        var l_th = gml_thread_create(l_ccProgram, l_scr[10], l_args1, l_locals)
	        array_set(l_th, 3, l_ccProgram[9])
	        array_set(l_th, 6, l_ccProgram[10])
	        gml_thread_exec(l_th)
	        var l_ccThread = l_th
	    }
	    else
	        l_ccThread = undefined
	    if (l_ccThread[2] != 3)
	    {
	        l_ccError = l_ccThread[7]
	        if (l_ccError == undefined)
	            l_ccError = (l_ccPath + ": unknown execution error")
	    }
	}
	gml_program_destroy(l_ccProgram)
	if (l_ccError != undefined)
	    live_log(l_ccError)
}
