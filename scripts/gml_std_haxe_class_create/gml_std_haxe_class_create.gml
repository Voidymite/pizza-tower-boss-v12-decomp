function gml_std_haxe_class_create()
{
	var this = ["mt_gml_std_haxe_class"]
	array_copy(this, 1, global.mq_gml_std_haxe_class, 1, 4)
	array_set(this, 4, undefined)
	array_set(this, 1, global.gml_std_haxe_type_markerValue)
	array_set(this, 2, argument[0])
	array_set(this, 3, argument[1])
	return this;
}
