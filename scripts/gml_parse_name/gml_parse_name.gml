function gml_parse_name()
{
	var l_s = argument[0]
	var l_i = argument[1]
	var l_c = string_ord_at(l_s, (l_i + 1))
	if ((l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || l_c == 95)
	{
	    var l_k = l_i
	    while 1
	    {
	        l_i++
	        l_c = string_ord_at(l_s, (l_i + 1))
	        if (!((l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57))))
	            break
	        else
	            continue
	    }
	    return string_delete(string_copy(l_s, 1, l_i), 1, l_k);
	}
	else
	    show_error(("API.parseName: wrong format in " + l_s), 0)
}
