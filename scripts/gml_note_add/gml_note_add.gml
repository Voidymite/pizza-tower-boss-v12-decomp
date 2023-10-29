function gml_note_add()
{
	var l_text = argument[0]
	if (string_pos("\n", l_text) > 0)
	{
	    var l__n = "\n"
	    var l__rn = ("\r" + l__n)
	    l_text = string_replace_all(l_text, l__rn, l__n)
	    l_text = ((((("/**" + l__rn) + " * ") + string_replace_all(l_text, l__n, (l__rn + " * "))) + l__rn) + " */")
	}
	else
	{
	    switch string_char_at(l_text, 1)
	    {
	        case "{":
	        case "}":
	            l_text = ("//" + l_text)
	            break
	        case "/":
	            break
	        default:
	            l_text = ("/// " + l_text)
	    }
	
	}
	ds_list_add(global.g_gml_sig_list, l_text)
}
