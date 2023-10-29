function vm_gml_thread_exec_call_fn1()
{
	var l_f1 = argument[0]
	var l_w1 = argument[1]
	switch argument[2]
	{
	    case 8:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7]);
	    case 9:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8]);
	    case 10:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9]);
	    case 11:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9], l_w1[10]);
	    case 12:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9], l_w1[10], l_w1[11]);
	    case 13:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9], l_w1[10], l_w1[11], l_w1[12]);
	    case 14:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9], l_w1[10], l_w1[11], l_w1[12], l_w1[13]);
	    case 15:
	        return script_execute(l_f1, l_w1[0], l_w1[1], l_w1[2], l_w1[3], l_w1[4], l_w1[5], l_w1[6], l_w1[7], l_w1[8], l_w1[9], l_w1[10], l_w1[11], l_w1[12], l_w1[13], l_w1[14]);
	    default:
	        return undefined;
	}
	
}
