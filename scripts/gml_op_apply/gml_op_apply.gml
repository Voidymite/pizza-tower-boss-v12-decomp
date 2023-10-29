function gml_op_apply()
{
	var l_q = argument[1]
	var l_v = argument[2]
	switch argument[0]
	{
	    case 16:
	        l_q += l_v
	        break
	    case 17:
	        l_q -= l_v
	        break
	    case 0:
	        l_q *= l_v
	        break
	    case 1:
	        l_q /= l_v
	        break
	    case 2:
	        l_q %= l_v
	        break
	    case 3:
	        l_q = (l_q div l_v)
	        break
	    case 49:
	        l_q &= l_v
	        break
	    case 48:
	        l_q |= l_v
	        break
	    case 50:
	        l_q ^= l_v
	        break
	    case 32:
	        l_q = (l_q << l_v)
	        break
	    case 33:
	        l_q = (l_q >> l_v)
	        break
	    case 64:
	        l_q = l_q == l_v
	        break
	    case 65:
	        l_q = l_q != l_v
	        break
	    case 68:
	        l_q = l_q > l_v
	        break
	    case 69:
	        l_q = l_q >= l_v
	        break
	    case 66:
	        l_q = l_q < l_v
	        break
	    case 67:
	        l_q = l_q <= l_v
	        break
	    default:
	        l_q = 0
	}
	
	return l_q;
}
