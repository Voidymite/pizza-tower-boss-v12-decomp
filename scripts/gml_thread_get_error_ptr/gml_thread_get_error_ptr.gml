function gml_thread_get_error_ptr()
{
	var this = argument[0]
	if (this[8] != undefined)
	    return gml_pos_to_string(this[8]);
	else
	    return "?";
}
