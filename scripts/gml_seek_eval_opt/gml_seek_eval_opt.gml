function gml_seek_eval_opt()
{
	global.g_gml_seek_eval_eval_rec = 1
	gml_program_seek(global.g_gml_program_seek_inst, global.f_gml_seek_eval_proc)
	global.g_gml_seek_eval_eval_thread = undefined
	return 0;
}
