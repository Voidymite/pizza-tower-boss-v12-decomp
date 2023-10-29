function gml_program_check()
{
	var this = argument[0]
	global.g_gml_program_seek_inst = this
	if gml_program_seek(this, global.f_gml_seek_arguments_proc, 0)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_locals_proc, 0)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_idents_proc, 1)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_fields_proc, 0)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_calls_proc, 0)
	    return 1;
	if gml_seek_enum_values_proc()
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_enum_fields_proc, 0)
	    return 1;
	if gml_seek_eval_opt()
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_self_fields_proc, 0)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_alarms_proc, 0)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_adjfix_proc, 1)
	    return 1;
	if gml_program_seek(this, global.f_gml_seek_set_op_proc, 1)
	    return 1;
	global.g_gml_program_seek_inst = undefined
	return 0;
}
