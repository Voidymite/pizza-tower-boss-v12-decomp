function gml_pos_to_string()
{
	var this = argument[0]
	return (gml_std_haxe_boot_wget(this[1], 1) + (((("[L" + string(this[2])) + ",c") + string(this[3])) + "]"));
}
