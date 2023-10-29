function gml_builder_build_outer()
{
	var this = argument[0]
	if (argument_count > 2)
	    var l_namedArgs = argument[2]
	else
	    l_namedArgs = undefined
	if (argument_count > 3)
	    var l_namedArgc = argument[3]
	else
	    l_namedArgc = 0
	var l_scr = gml_script_create(this[2], argument[1], (this[3] >= this[4] ? gml_std_haxe_boot_wget(this[2], 7) : gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 1)))
	if (l_namedArgs == undefined)
	    l_namedArgs = ds_map_create()
	array_set(l_scr, 9, l_namedArgs)
	array_set(l_scr, 8, l_namedArgc)
	gml_std_array_hx_push(this[5], l_scr)
	var l_nodes = []
	while (this[3] < this[4])
	{
	    var l__g = gml_std_haxe_boot_wget(this[1], this[3])
	    switch l__g[0]
	    {
	        case 0:
	            var l__name = l__g[2]
	            break
	        case 28:
	            gml_std_array_hx_push(l_nodes, [107, l__g[1], l__g[2]])
	            array_set(this, 3, (array_get(this, 3) + 1))
	            continue
	        default:
	            if gml_builder_build_line(this)
	                return 1;
	            gml_std_array_hx_push(l_nodes, this[11])
	            continue
	    }
	
	}
	if (array_length_1d(l_nodes) > 1)
	    array_set(l_scr, 4, [89, gml_std_haxe_boot_wget(l_nodes[0], 1), l_nodes])
	else if (array_length_1d(l_nodes) == 1)
	    array_set(l_scr, 4, l_nodes[0])
	else
	    array_set(l_scr, 4, [89, gml_std_haxe_boot_wget(this[2], 7), l_nodes])
	return 0;
}
