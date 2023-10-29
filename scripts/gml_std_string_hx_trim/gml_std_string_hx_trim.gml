function gml_std_string_hx_trim()
{
	var l_str = argument[0]
	var l_len = string_length(l_str)
	var l_till = l_len
	while (l_till > 0)
	{
	    var l_char = string_ord_at(l_str, l_till)
	    if (l_char == 32 || (l_char > 8 && l_char < 14))
	    {
	        l_till--
	        continue
	    }
	    else
	        break
	}
	if (l_till < l_len)
	    l_str = string_copy(l_str, 1, l_till)
	var l_start = 1
	while (l_start <= l_till)
	{
	    l_char = string_ord_at(l_str, l_start)
	    if (l_char == 32 || (l_char > 8 && l_char < 14))
	    {
	        l_start++
	        continue
	    }
	    else
	        break
	}
	if (l_start > 1)
	    l_str = string_delete(l_str, 1, (l_start - 1))
	return l_str;
}
