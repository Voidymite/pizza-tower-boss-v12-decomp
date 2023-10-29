function gml_func_scope_create()
{
	var this = [global.mt_gml_func_scope]
	array_copy(this, 1, global.mq_gml_func_scope, 1, 9)
	array_set(this, 8, undefined)
	array_set(this, 7, undefined)
	array_set(this, 5, array_create(16, 0))
	array_set(this, 1, argument[0])
	array_set(this, 2, argument[1])
	array_set(this, 3, argument[2])
	array_set(this, 4, argument[3])
	array_set(this, 6, [2, argument[5], argument[4]])
	array_set(this, 9, argument[6])
	return this;
}
