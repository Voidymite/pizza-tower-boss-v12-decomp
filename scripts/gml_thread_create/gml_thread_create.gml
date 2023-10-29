function gml_thread_create()
{
	var this = array_create(9)
	if (argument_count > 4)
	    var l_self1 = argument[4]
	else
	    l_self1 = undefined
	if (argument_count > 5)
	    var l_other1 = argument[5]
	else
	    l_other1 = undefined
	if (argument_count > 6)
	    var l_offset = argument[6]
	else
	    l_offset = 0
	array_set(this, 8, undefined)
	array_set(this, 7, undefined)
	array_set(this, 6, undefined)
	array_set(this, 3, undefined)
	array_set(this, 2, 0)
	array_set(this, 1, undefined)
	array_set(this, 0, argument[0])
	if (l_self1 == undefined)
	    l_self1 = id
	if (l_other1 == undefined)
	    l_other1 = other.id
	array_set(this, 4, gml_func_scope_create(argument[1], l_offset, argument[2], argument[3], l_self1, l_other1, undefined))
	return this;
}
