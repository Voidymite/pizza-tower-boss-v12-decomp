function gml_script_create()
{
	var this = [global.mt_gml_script]
	array_copy(this, 1, global.mq_gml_script, 1, 10)
	array_set(this, 10, undefined)
	array_set(this, 9, undefined)
	array_set(this, 8, 0)
	array_set(this, 7, 0)
	array_set(this, 6, ds_map_create())
	array_set(this, 5, argument[0])
	array_set(this, 1, argument[1])
	array_set(this, 2, argument[2])
	return this;
}
