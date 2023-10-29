function gml_seek_alarms_check()
{
	var l_x = argument[0]
	if (l_x[0] == 38)
	{
	    if (l_x[3] == "alarm")
	        return l_x[2];
	    else
	        return undefined;
	}
	else
	    return undefined;
}
