function vm_gml_thread_exec_slice_with7()
{
	var l_w = argument[1]
	var l_i = argument[2]
	return script_execute(argument[0], l_w[l_i], l_w[(l_i + 1)], l_w[(l_i + 2)], l_w[(l_i + 3)], l_w[(l_i + 4)], l_w[(l_i + 5)], l_w[(l_i + 6)]);
}
