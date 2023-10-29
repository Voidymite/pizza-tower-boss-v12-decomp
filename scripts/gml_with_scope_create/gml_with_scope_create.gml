function gml_with_scope_create()
{
	var this = [global.mt_gml_with_scope]
	array_copy(this, 1, global.mq_gml_with_scope, 1, 5)
	var l_data = argument[0]
	array_set(this, 1, 0)
	array_set(this, 5, l_data)
	array_set(this, 2, l_data[0])
	array_set(this, 3, l_data[1])
	array_set(this, 4, argument[1])
	return this;
}
