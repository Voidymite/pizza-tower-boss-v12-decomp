function gml_node_clone_opt()
{
	var l_q = argument[0]
	if (l_q != undefined)
	    return gml_node_clone(l_q);
	else
	    return undefined;
}
