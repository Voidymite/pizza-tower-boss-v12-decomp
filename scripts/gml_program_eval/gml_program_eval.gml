function gml_program_eval()
{
	var this = argument[0]
	var l_q = argument[1]
	var l__g = l_q
	switch l__g[0]
	{
	    case 1:
	        var l_r = l__g[2]
	        break
	    case 2:
	        l_r = l__g[2]
	        break
	    case 38:
	        var l__hx_tmp = l__g[2]
	        if (l__hx_tmp[0] == 7)
	        {
	            var l_f = l__g[3]
	            var l_s = l__hx_tmp[2]
	            var l_d1 = l__g[1]
	            var l_e = ds_map_find_value(this[5], l_s)
	            if (l_e != undefined)
	            {
	                var l_c = ds_map_find_value(l_e[4], l_f)
	                if (l_c != undefined)
	                {
	                    l_r = l_c[4]
	                    if (l_r == undefined)
	                        return gml_program_error(this, (((("Value of " + l_s) + ".") + l_f) + " is not known here"), l_d1);
	                }
	                else
	                    return gml_program_error(this, (((("Enum `" + l_s) + "` does not contain field `") + l_f) + "`"), l_d1);
	            }
	            else
	                return gml_program_error(this, ("Could not find enum " + l_s), l_d1);
	        }
	        else
	            return gml_program_error(this, "Can not evaluate this compile-time", l_q[1]);
	        break
	    case 27:
	        if gml_program_eval(this, l__g[3])
	            return 1;
	        l_r = this[15]
	        if gml_program_eval(this, l__g[4])
	            return 1;
	        var l_v = this[15]
	        switch l__g[2]
	        {
	            case 16:
	                l_r += l_v
	                break
	            case 17:
	                l_r -= l_v
	                break
	            case 0:
	                l_r *= l_v
	                break
	            case 1:
	                l_r /= l_v
	                break
	            case 2:
	                l_r %= l_v
	                break
	            case 3:
	                l_r = (l_r div l_v)
	                break
	            case 49:
	                l_r &= l_v
	                break
	            case 48:
	                l_r |= l_v
	                break
	            case 50:
	                l_r ^= l_v
	                break
	            case 32:
	                l_r = (l_r << l_v)
	                break
	            case 33:
	                l_r = (l_r >> l_v)
	                break
	            default:
	                return gml_program_error(this, "Can not evaluate this compile-time", l_q[1]);
	        }
	
	        break
	    default:
	        return gml_program_error(this, "Can not evaluate this compile-time", l_q[1]);
	}
	
	array_set(this, 15, l_r)
	return 0;
}
