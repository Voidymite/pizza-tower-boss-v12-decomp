function gml_builder_build_args()
{
	var this = argument[0]
	var l_pos = argument[1]
	var l_sqb = argument[2]
	var l_args1 = []
	var l_proc = 1
	var l_seenComma = 1
	var l_func = this[11]
	while (l_proc && this[3] < this[4])
	{
	    var l_tk = gml_std_haxe_boot_wget(this[1], this[3])
	    switch l_tk[0]
	    {
	        case 21:
	            if l_sqb
	                return gml_builder_error(this, "Unexpected `)`", l_tk);
	            else
	            {
	                l_proc = 0
	                array_set(this, 3, (array_get(this, 3) + 1))
	            }
	            break
	        case 4:
	            if l_seenComma
	                return gml_builder_error(this, "Unexpected comma", l_tk);
	            else
	            {
	                l_seenComma = 1
	                array_set(this, 3, (array_get(this, 3) + 1))
	            }
	            break
	        default:
	            if l_seenComma
	            {
	                l_seenComma = 0
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                gml_std_array_hx_push(l_args1, this[11])
	                break
	            }
	            else
	                return gml_builder_expect(this, "a comma or closing token.", l_tk);
	    }
	
	}
	if l_proc
	    return gml_builder_error_at(this, "Unclosed list", l_pos);
	if l_sqb
	    array_set(this, 11, [4, l_pos, l_args1])
	else
	    array_set(this, 11, [17, l_pos, l_func, l_args1])
	return 0;
}
