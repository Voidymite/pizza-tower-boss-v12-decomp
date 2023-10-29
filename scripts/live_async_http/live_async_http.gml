function live_async_http()
{
	if (argument_count > 0)
	    var l_e = argument[0]
	else
	    l_e = undefined
	if (l_e == undefined)
	    l_e = async_load
	if (!live_async_http_check(l_e))
	    return 0;
	global.g_live_request_id = undefined
	if (ds_map_find_value(l_e, "status") < 0 || ds_map_find_value(l_e, "result") == undefined)
	    return 0;
	var l_map = json_decode(ds_map_find_value(l_e, "result"))
	if (l_map == -1 || ds_map_exists(l_map, "default"))
	    return 0;
	if (global.g_live_request_guid == undefined)
	    live_async_http_0(l_map)
	live_async_http_1(l_map)
	ds_map_destroy(l_map)
}
