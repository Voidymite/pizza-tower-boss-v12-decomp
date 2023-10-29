function gml_enum_create()
{
	var this = [global.mt_gml_enum]
	array_copy(this, 1, global.mq_gml_enum, 1, 4)
	array_set(this, 4, ds_map_create())
	array_set(this, 3, [])
	array_set(this, 1, argument[0])
	array_set(this, 2, argument[1])
	return this;
}
