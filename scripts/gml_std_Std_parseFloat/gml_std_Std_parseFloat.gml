function gml_std_Std_parseFloat()
{
	var l_s = argument[0]
	var l_l = string_length(l_s)
	var l_n = string_length(string_digits(l_s))
	var l_p = string_pos(".", l_s)
	var l_e = string_pos("e", l_s)
	if (l_e == 0)
	    l_e = string_pos("E", l_s)
	switch l_e
	{
	    case 0:
	        break
	    case 1:
	        return global.g_gml_std_mathnf_not_a_number;
	    case 2:
	        if (l_p > 0)
	        {
	            global.g_gml_std_mathnf_not_a_number = global.g_gml_std_mathnf_not_a_number
	            return global.g_gml_std_mathnf_not_a_number;
	        }
	        break
	    default:
	        if (l_p > 0 && l_e < l_p)
	        {
	            global.g_gml_std_mathnf_not_a_number = global.g_gml_std_mathnf_not_a_number
	            return global.g_gml_std_mathnf_not_a_number;
	        }
	}
	
}
