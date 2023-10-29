function gml_program_destroy()
{
	var this = argument[0]
	var l__g = 0
	var l__g1 = this[2]
	while (l__g < array_length_1d(l__g1))
	{
	    var l_q = l__g1[l__g]
	    l__g++
	    gml_script_destroy(l_q)
	}
	array_set(this, 2, undefined)
	ds_map_destroy(this[3])
	array_set(this, 3, undefined)
	ds_map_destroy(this[5])
	array_set(this, 5, undefined)
	ds_map_destroy(this[6])
	array_set(this, 6, undefined)
	ds_list_destroy(this[7])
	array_set(this, 7, undefined)
	ds_list_destroy(this[8])
	array_set(this, 8, undefined)
}
