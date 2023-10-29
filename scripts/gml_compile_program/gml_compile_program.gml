function gml_compile_program()
{
	var l_p = argument[0]
	global.g_gml_compile_curr_program = l_p
	var l_arr = l_p[2]
	var l_num = array_length_1d(l_arr)
	var l_i = 0
	while (l_i < l_num)
	{
	    if gml_compile_script(l_arr[l_i])
	        break
	    else
	    {
	        l_i++
	        continue
	    }
	}
	global.g_gml_compile_curr_program = undefined
	return l_i < l_num;
}
