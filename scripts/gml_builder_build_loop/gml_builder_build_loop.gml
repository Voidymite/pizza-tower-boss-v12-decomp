function gml_builder_build_loop()
{
	var this = argument[0]
	if gml_builder_build_outer(this, argument[1])
	    return 1;
	while (this[3] < this[4])
	{
	    var l_tk = gml_std_haxe_boot_wget(this[1], this[3])
	    if (l_tk[0] == 0)
	    {
	        array_set(this, 3, (array_get(this, 3) + 1))
	        var l_nextName = l_tk[2]
	        var l_nextArgs = undefined
	        var l_nextArgc = 0
	        if (!((l_tk[3] || this[3] >= this[4])))
	        {
	            if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 20)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                l_nextArgs = ds_map_create()
	                var l_proc = 1
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected script arguments", gml_std_haxe_boot_wget(this[2], 7));
	                var l__g2 = gml_std_haxe_boot_wget(this[1], this[3])
	                if (l__g2[0] == 21)
	                    var l_tmp = 1
	                else
	                    l_tmp = 0
	                if l_tmp
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                {
	                    while (l_proc && this[3] < this[4])
	                    {
	                        var l__g21 = gml_std_haxe_boot_wget(this[1], this[3])
	                        if (l__g21[0] == 10)
	                        {
	                            var l_s = l__g21[2]
	                            var l_nextArg = l_s
	                            if ds_map_exists(l_nextArgs, l_nextArg)
	                            {
	                                ds_map_destroy(l_nextArgs)
	                                return gml_builder_error(this, ((("An argument named " + l_nextArg) + " is already defined at position ") + gml_std_Std_string(ds_map_find_value(l_nextArgs, l_nextArg))), gml_std_haxe_boot_wget(this[1], this[3]));
	                            }
	                            ds_map_set(l_nextArgs, l_s, l_nextArgc)
	                            l_nextArgc++
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                            {
	                                case 21:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    l_proc = 0
	                                    break
	                                case 4:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    break
	                                default:
	                                    ds_map_destroy(l_nextArgs)
	                                    return gml_builder_expect(this, "a comma or closing parenthesis in script arguments", gml_std_haxe_boot_wget(this[1], this[3]));
	                            }
	
	                        }
	                        else
	                            return gml_builder_expect(this, "an argument", gml_std_haxe_boot_wget(this[1], this[3]));
	                    }
	                }
	            }
	        }
	        if gml_builder_build_outer(this, l_nextName, l_nextArgs, l_nextArgc)
	            return 1;
	    }
	    else
	        return gml_builder_expect(this, "A script declaration", l_tk);
	}
	return 0;
}
