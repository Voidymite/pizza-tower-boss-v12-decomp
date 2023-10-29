function gml_with_first()
{
	var l_seek = argument[0]
	if gml_std__Std_StdImpl_isNumber(l_seek)
	{
	    with (l_seek)
	        return id;
	}
	else
	    return l_seek;
}
