function gml_pos_create()
{
	var this = [global.mt_gml_pos]
	array_copy(this, 1, global.mq_gml_pos, 1, 3)
	array_set(this, 1, argument[0])
	array_set(this, 2, argument[1])
	array_set(this, 3, argument[2])
	return this;
}
