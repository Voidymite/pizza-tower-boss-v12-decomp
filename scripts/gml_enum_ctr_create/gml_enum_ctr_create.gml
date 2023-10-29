function gml_enum_ctr_create()
{
	var this = [global.mt_gml_enum_ctr]
	array_copy(this, 1, global.mq_gml_enum_ctr, 1, 4)
	array_set(this, 1, argument[0])
	array_set(this, 2, argument[1])
	array_set(this, 3, argument[2])
	return this;
}
