function vm_gml_thread_exec_call_fn0()
{
	var l_f = argument[0]
	var l_w = argument[1]
	switch argument[2]
	{
	    case 0:
	        return script_execute(l_f);
	    case 1:
	        return script_execute(l_f, l_w[0]);
	    case 2:
	        return script_execute(l_f, l_w[0], l_w[1]);
	    case 3:
	        return script_execute(l_f, l_w[0], l_w[1], l_w[2]);
	    case 4:
	        return script_execute(l_f, l_w[0], l_w[1], l_w[2], l_w[3]);
	    case 5:
	        return script_execute(l_f, l_w[0], l_w[1], l_w[2], l_w[3], l_w[4]);
	    case 6:
	        return script_execute(l_f, l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5]);
	    case 7:
	        return script_execute(l_f, l_w[0], l_w[1], l_w[2], l_w[3], l_w[4], l_w[5], l_w[6]);
	    default:
	        return undefined;
	}
	
}
