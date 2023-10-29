function gml_source_create()
{
	var this = [global.mt_gml_source]
	array_copy(this, 1, global.mq_gml_source, 1, 7)
	var l_name = argument[0]
	var l_code = argument[1]
	if (argument_count > 2)
	    var l_main = argument[2]
	else
	    l_main = undefined
	if (argument_count > 3)
	    var l_opt = argument[3]
	else
	    l_opt = 0
	array_set(this, 6, undefined)
	array_set(this, 1, l_name)
	array_set(this, 2, l_code)
	array_set(this, 5, l_opt)
	if (l_main == undefined)
	{
	    l_main = l_name
	    while 1
	    {
	        var l_i = gml_std_string_pos_ext(l_main, "/")
	        if (l_i < 0)
	            l_i = gml_std_string_pos_ext(l_main, "\\")
	        if (l_i >= 0)
	            l_main = string_delete(l_main, 1, (l_i + 1))
	        if (l_i < 0)
	            break
	        else
	            continue
	    }
	    l_i = gml_std_string_pos_ext(l_main, ".")
	    if (l_i >= 0)
	        l_main = string_copy(l_main, 1, l_i)
	}
	array_set(this, 3, l_main)
	array_set(this, 4, string_length(l_code))
	array_set(this, 7, gml_pos_create(this, (string_count("\n", l_code) + 2), 1))
	return this;
}
