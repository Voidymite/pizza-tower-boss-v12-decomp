function gml_program_update()
{
	var this = argument[0]
	if (argument_count > 2)
	    var l_timeTag = argument[2]
	else
	    l_timeTag = undefined
	var l_list = this[7]
	var l_n = ds_list_size(l_list)
	if (l_n > 0)
	{
	    var l_swap = this[8]
	    array_set(this, 7, l_swap)
	    var l_i = 0
	    while (l_i < l_n)
	    {
	        var l_th = ds_list_find_value(l_list, l_i)
	        if (l_th[6] == l_timeTag)
	        {
	            var l_t = (l_th[5] - argument[1])
	            if (l_t <= 0)
	            {
	                array_set(l_th, 5, 0)
	                ds_list_delete(l_list, l_i)
	                gml_thread_exec(l_th)
	                l_n--
	            }
	            else
	            {
	                array_set(l_th, 5, l_t)
	                l_i++
	            }
	        }
	        else
	            l_i++
	    }
	    l_n = ds_list_size(l_swap)
	    for (l_i = 0; l_i < l_n; l_i++)
	        ds_list_add(l_list, ds_list_find_value(l_swap, l_i))
	    ds_list_clear(l_swap)
	    array_set(this, 7, l_list)
	}
}
