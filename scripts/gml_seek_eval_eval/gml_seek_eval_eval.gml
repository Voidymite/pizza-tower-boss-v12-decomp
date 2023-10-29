function gml_seek_eval_eval()
{
	global.g_gml_seek_eval_eval_rec = 0
	var l_r = gml_seek_eval_proc(argument[0], undefined)
	global.g_gml_seek_eval_eval_thread = undefined
	return l_r;
}
