function gml_thread_fork()
{
	var this = argument[0]
	var l_q = this[4]
	var l_q_inst = l_q[6]
	var l_r = gml_thread_create(this[0], l_q[1], gml_value_list_copy(l_q[3]), gml_value_list_copy(l_q[4]), l_q_inst[l_q_inst[0]], l_q_inst[(l_q_inst[0] - 1)], l_q[2])
	array_set(l_r, 3, this[3])
	var l_n = l_r[4]
	array_set(l_n, 6, gml_std_array_hx_copy(l_q_inst))
	array_set(l_n, 5, gml_std_array_hx_copy(l_q[5]))
	array_set(l_n, 7, gml_with_scope_copy(l_q[7]))
	return l_r;
}
