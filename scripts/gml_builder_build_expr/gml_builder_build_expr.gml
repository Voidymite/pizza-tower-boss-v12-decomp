function gml_builder_build_expr()
{
	var this = argument[0]
	var l_flags = argument[1]
	if (this[3] >= this[4])
	    return gml_builder_error_at(this, "Expected an expression", gml_std_haxe_boot_wget(this[2], 7));
	var l_tk0 = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	switch l_tk0[0]
	{
	    case 12:
	        array_set(this, 11, [0, l_tk0[1]])
	        break
	    case 13:
	        array_set(this, 11, [1, l_tk0[1], l_tk0[2], l_tk0[3]])
	        break
	    case 14:
	        array_set(this, 11, [2, l_tk0[1], l_tk0[2]])
	        break
	    case 22:
	        var l_proc = 1
	        var l_sep = 1
	        var l_nodes = []
	        while (l_proc && this[3] < this[4])
	        {
	            switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	            {
	                case 23:
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    l_proc = 0
	                    break
	                case 4:
	                    if l_sep
	                        return gml_builder_expect(this, "a value or closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                    else
	                    {
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        l_sep = 1
	                    }
	                    break
	                default:
	                    if gml_builder_build_expr(this, 0)
	                        return 1;
	                    gml_std_array_hx_push(l_nodes, this[11])
	                    l_sep = 0
	            }
	
	        }
	        array_set(this, 11, [4, l_tk0[1], l_nodes])
	        break
	    case 10:
	        var l_s2 = l_tk0[2]
	        switch l_s2
	        {
	            case "self":
	                array_set(this, 11, [8, l_tk0[1]])
	                break
	            case "other":
	                array_set(this, 11, [9, l_tk0[1]])
	                break
	            default:
	                if ds_map_exists(global.g_gml_asset_index, l_s2)
	                {
	                    var l_i = ds_map_find_value(global.g_gml_asset_index, l_s2)
	                    array_set(this, 11, [1, l_tk0[1], l_i, undefined])
	                    break
	                }
	                else
	                    array_set(this, 11, [7, l_tk0[1], l_s2])
	        }
	
	        break
	    case 26:
	        array_set(this, 11, [14, l_tk0[1], l_tk0[2]])
	        break
	    case 9:
	        switch l_tk0[2]
	        {
	            case 0:
	                var l_d = l_tk0[1]
	                if (this[3] >= this[4])
	                    array_set(this, 11, [10, l_d])
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 5)
	                {
	                    var l_tk = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	                    if (this[3] >= this[4])
	                        return gml_builder_expect(this, "a field name", l_tk);
	                    else
	                    {
	                        var l__g2 = gml_std_haxe_boot_wget(this[1], this[3])
	                        if (l__g2[0] == 10)
	                        {
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            array_set(this, 11, [35, l__g2[1], l__g2[2]])
	                        }
	                        else
	                            return gml_builder_expect(this, "a field name", gml_std_haxe_boot_wget(this[1], this[3]));
	                    }
	                }
	                else
	                    array_set(this, 11, [10, l_d])
	                break
	            case 21:
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected an opening square bracket", gml_std_haxe_boot_wget(this[2], 7));
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 22)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                    return gml_builder_error(this, "Expected an opening square bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected a closing square bracket", gml_std_haxe_boot_wget(this[2], 7));
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                    return gml_builder_error(this, "Expected a closing square bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                array_set(this, 11, [15, l_tk0[1], this[11]])
	                break
	            case 22:
	                array_set(this, 11, [16, l_tk0[1]])
	                break
	            default:
	                if ((l_flags & 4) != 0)
	                    return gml_builder_expect(this, "a statement", l_tk0);
	                else
	                    return gml_builder_expect(this, "a value", l_tk0);
	        }
	
	        break
	    case 15:
	        if gml_builder_build_expr(this, 1)
	            return 1;
	        var l__g5 = this[11]
	        if (l__g5[0] == 1)
	        {
	            var l_f1 = l__g5[2]
	            switch l_tk0[2]
	            {
	                case 2:
	                    l_f1 = (~((l_f1 | 0)))
	                    break
	                case 0:
	                    l_f1 = (-l_f1)
	                    break
	                case 1:
	                    l_f1 = (l_f1 > 0.5 ? 0 : 1)
	                    break
	            }
	
	            array_set(this, 11, [1, l_tk0[1], l_f1, undefined])
	        }
	        else
	            array_set(this, 11, [26, l_tk0[1], this[11], l_tk0[2]])
	        break
	    case 17:
	        if gml_builder_build_expr(this, 1)
	            return 1;
	        array_set(this, 11, [24, l_tk0[1], this[11], l_tk0[2]])
	        break
	    case 18:
	        switch l_tk0[2]
	        {
	            case 16:
	                if gml_builder_build_expr(this, 1)
	                    return 1;
	                break
	            case 17:
	                var l_d10 = l_tk0[1]
	                if gml_builder_build_expr(this, 1)
	                    return 1;
	                var l__g6 = this[11]
	                if (l__g6[0] == 1)
	                    array_set(this, 11, [1, l_d10, (-l__g6[2]), undefined])
	                else
	                    array_set(this, 11, [26, l_d10, this[11], 0])
	                break
	            default:
	                if ((l_flags & 4) != 0)
	                    return gml_builder_expect(this, "a statement", l_tk0);
	                else
	                    return gml_builder_expect(this, "a value", l_tk0);
	        }
	
	        break
	    case 20:
	        if gml_builder_build_expr(this, 0)
	            return 1;
	        if (this[3] >= this[4])
	            return gml_builder_error(this, "Unclosed parenthesis", l_tk0);
	        if (this[3] >= this[4])
	            return gml_builder_error_at(this, "Expected a closing parenthesis", gml_std_haxe_boot_wget(this[2], 7));
	        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 21)
	            array_set(this, 3, (array_get(this, 3) + 1))
	        else
	            return gml_builder_error(this, "Expected a closing parenthesis", gml_std_haxe_boot_wget(this[1], this[3]));
	        break
	    case 24:
	        var l_keys = []
	        l_nodes = []
	        l_proc = 1
	        var l__g9 = gml_std_haxe_boot_wget(this[1], this[3])
	        if (l__g9[0] == 25)
	            var l_tmp = 1
	        else
	            l_tmp = 0
	        if l_tmp
	            array_set(this, 3, (array_get(this, 3) + 1))
	        else
	        {
	            while (l_proc && this[3] < this[4])
	            {
	                var l__g22 = gml_std_haxe_boot_wget(this[1], this[3])
	                switch l__g22[0]
	                {
	                    case 14:
	                        var l_s = l__g22[2]
	                        gml_std_array_hx_push(l_keys, l_s)
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a `:` in object declaration", gml_std_haxe_boot_wget(this[2], 7));
	                        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                        else
	                            return gml_builder_error(this, "Expected a `:` in object declaration", gml_std_haxe_boot_wget(this[1], this[3]));
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        gml_std_array_hx_push(l_nodes, this[11])
	                        switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                        {
	                            case 4:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 25)
	                                {
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    l_proc = 0
	                                }
	                                break
	                            case 25:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                l_proc = 0
	                                break
	                            default:
	                                return gml_builder_expect(this, "a `,` or a `}` in object declaration", gml_std_haxe_boot_wget(this[1], this[3]));
	                        }
	
	                        break
	                    case 10:
	                        l_s = l__g22[2]
	                        gml_std_array_hx_push(l_keys, l_s)
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a `:` in object declaration", gml_std_haxe_boot_wget(this[2], 7));
	                        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                        else
	                            return gml_builder_error(this, "Expected a `:` in object declaration", gml_std_haxe_boot_wget(this[1], this[3]));
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        gml_std_array_hx_push(l_nodes, this[11])
	                        switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                        {
	                            case 4:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 25)
	                                {
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    l_proc = 0
	                                }
	                                break
	                            case 25:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                l_proc = 0
	                                break
	                            default:
	                                return gml_builder_expect(this, "a `,` or a `}` in object declaration", gml_std_haxe_boot_wget(this[1], this[3]));
	                        }
	
	                        break
	                    default:
	                        return gml_builder_expect(this, "a key-value pair or a `}` in object declaration", gml_std_haxe_boot_wget(this[1], this[3]));
	                }
	
	            }
	        }
	        array_set(this, 11, [5, l_tk0[1], l_keys, l_nodes])
	        break
	    case 28:
	        if gml_builder_build_expr(this, l_flags)
	            return 1;
	        array_set(this, 11, [110, l_tk0[1], l_tk0[2], this[11]])
	        break
	    case 27:
	        if gml_builder_build_expr(this, l_flags)
	            return 1;
	        array_set(this, 11, [108, l_tk0[1], l_tk0[2], this[11]])
	        break
	    case 29:
	        if gml_builder_build_expr(this, l_flags)
	            return 1;
	        array_set(this, 11, [112, l_tk0[1], l_tk0[2], this[11], l_tk0[3]])
	        break
	    case 0:
	        if ((l_flags & 4) != 0)
	            return gml_builder_error(this, "Expected a statement, got a header (did you miss a closing bracket?)", l_tk0);
	        else
	            return gml_builder_error(this, "Expected an expression, got a header (did you miss a closing parenthesis?)", l_tk0);
	        if ((l_flags & 4) != 0)
	            return gml_builder_expect(this, "a statement", l_tk0);
	        else
	            return gml_builder_expect(this, "a value", l_tk0);
	    default:
	        if ((l_flags & 4) != 0)
	        {
	            var $$$$temp$$$$ = gml_builder_expect(this, "a statement", l_tk0)
	            return gml_builder_expect(this, "a statement", l_tk0);
	        }
	        else
	        {
	            $$$$temp$$$$ = gml_builder_expect(this, "a value", l_tk0)
	            return gml_builder_expect(this, "a value", l_tk0);
	        }
	}
	
	l_proc = 1
	while (l_proc && this[3] < this[4])
	{
	    l_tk = gml_std_haxe_boot_wget(this[1], this[3])
	    switch l_tk[0]
	    {
	        case 17:
	            if ((l_flags & 2) == 0)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                array_set(this, 11, [25, l_tk[1], this[11], l_tk[2]])
	                l_flags |= 2
	            }
	            else if l_tk[2]
	                return gml_builder_error_at(this, "Unexpected `++`", l_tk[1]);
	            else
	                return gml_builder_error_at(this, "Unexpected `--`", l_tk[1]);
	            break
	        case 5:
	            if ((l_flags & 2) == 0)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                var l__g311 = gml_std_haxe_boot_wget(this[1], this[3])
	                if (l__g311[0] == 10)
	                {
	                    l_s = l__g311[2]
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    array_set(this, 11, [38, l_tk[1], this[11], l_s])
	                }
	                else
	                    return gml_builder_error(this, "Expected a field name", gml_std_haxe_boot_wget(this[1], this[3]));
	            }
	            else
	                return gml_builder_error(this, "Unexpected period", gml_std_haxe_boot_wget(this[1], this[3]));
	            break
	        case 20:
	            if ((l_flags & 2) == 0)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                if gml_builder_build_args(this, l_tk[1], 0)
	                    return 1;
	            }
	            else
	                return gml_builder_error_at(this, "Unexpected `(`", l_tk[1]);
	            break
	        case 22:
	            var l_d24 = l_tk[1]
	            if ((l_flags & 2) == 0)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected an index", gml_std_haxe_boot_wget(this[2], 7));
	                var l_node = this[11]
	                var l__g314 = gml_std_haxe_boot_wget(this[1], this[3])
	                switch l__g314[0]
	                {
	                    case 18:
	                        if (l__g314[2] == 48)
	                        {
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            if gml_builder_build_expr(this, 0)
	                                return 1;
	                            if (this[3] >= this[4])
	                                return gml_builder_error_at(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                            else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                            else
	                                return gml_builder_error(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                            array_set(this, 11, [73, l_d24, l_node, this[11]])
	                        }
	                        else
	                            l_proc = 0
	                        break
	                    case 7:
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                        else
	                            return gml_builder_error(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                        array_set(this, 11, [78, l_d24, l_node, this[11]])
	                        break
	                    case 2:
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        var l_node2 = this[11]
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a comma", gml_std_haxe_boot_wget(this[2], 7));
	                        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 4)
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                        else
	                            return gml_builder_error(this, "Expected a comma", gml_std_haxe_boot_wget(this[1], this[3]));
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                        else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                        else
	                            return gml_builder_error(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                        array_set(this, 11, [83, l_d24, l_node, l_node2, this[11]])
	                        break
	                    case 8:
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected comma or a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                        switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                        {
	                            case 4:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                l_node2 = this[11]
	                                if gml_builder_build_expr(this, 0)
	                                    return 1;
	                                if (this[3] >= this[4])
	                                    return gml_builder_error_at(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                else
	                                    return gml_builder_error(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                                array_set(this, 11, [68, l_d24, l_node, l_node2, this[11]])
	                                break
	                            case 23:
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                array_set(this, 11, [63, l_d24, l_node, this[11]])
	                                break
	                            default:
	                                gml_builder_expect(this, "comma or a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]))
	                        }
	
	                        break
	                    default:
	                        l_proc = 0
	                }
	
	                if (!l_proc)
	                {
	                    l_proc = 1
	                    if gml_builder_build_expr(this, 0)
	                        return 1;
	                    if (this[3] >= this[4])
	                        return gml_builder_error_at(this, "Expected comma or a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                    switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                    {
	                        case 4:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            l_node2 = this[11]
	                            if gml_builder_build_expr(this, 0)
	                                return 1;
	                            if (this[3] >= this[4])
	                                return gml_builder_error_at(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[2], 7));
	                            else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 23)
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                            else
	                                return gml_builder_error(this, "Expected a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                            array_set(this, 11, [58, l_d24, l_node, l_node2, this[11]])
	                            break
	                        case 23:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            array_set(this, 11, [53, l_d24, l_node, this[11]])
	                            break
	                        default:
	                            gml_builder_expect(this, "comma or a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]))
	                    }
	
	                }
	            }
	            else
	                return gml_builder_error_at(this, "Unexpected `[`", l_d24);
	            break
	        case 15:
	            if (l_tk[2] == 1)
	            {
	                var l_d20 = l_tk[1]
	                if ((l_flags & 2) == 0)
	                {
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 16)
	                    {
	                        l_node = this[11]
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                        if gml_builder_build_expr(this, 1)
	                            return 1;
	                        array_set(this, 11, [31, l_d20, l_node, this[11], 1])
	                    }
	                    else
	                        array_set(this, 3, (array_get(this, 3) - 1))
	                }
	            }
	            else
	                l_proc = 0
	            break
	        case 16:
	            if ((l_flags & 2) == 0)
	            {
	                l_node = this[11]
	                array_set(this, 3, (array_get(this, 3) + 1))
	                if gml_builder_build_expr(this, 1)
	                    return 1;
	                array_set(this, 11, [31, l_tk[1], l_node, this[11], 0])
	            }
	            break
	        case 18:
	            if ((l_flags & 1) == 0)
	            {
	                if gml_builder_build_ops(this, l_tk[1], l_tk[2])
	                    return 1;
	                l_flags |= 2
	            }
	            else
	                l_proc = 0
	            break
	        case 19:
	            if (l_tk[2] == -1)
	            {
	                var l_p1 = l_tk[1]
	                if ((l_flags & 1) == 0)
	                {
	                    if gml_builder_build_ops(this, l_p1, 64)
	                        return 1;
	                    l_flags |= 2
	                }
	                else
	                    l_proc = 0
	            }
	            else
	                l_proc = 0
	            break
	        case 7:
	            if ((l_flags & 1) == 0)
	            {
	                array_set(this, 3, (array_get(this, 3) + 1))
	                l_node = this[11]
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_node2 = this[11]
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected an else-colon", gml_std_haxe_boot_wget(this[2], 7));
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                    return gml_builder_error(this, "Expected an else-colon", gml_std_haxe_boot_wget(this[1], this[3]));
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                array_set(this, 11, [91, l_tk[1], l_node, l_node2, this[11]])
	            }
	            else
	                l_proc = 0
	            break
	        case 27:
	            array_set(this, 3, (array_get(this, 3) + 1))
	            array_set(this, 11, [109, l_tk[1], this[11], l_tk[2]])
	            break
	        case 28:
	            array_set(this, 3, (array_get(this, 3) + 1))
	            break
	        case 29:
	            array_set(this, 3, (array_get(this, 3) + 1))
	            array_set(this, 11, [113, l_tk[1], this[11], l_tk[2], l_tk[3]])
	            break
	        default:
	            l_proc = 0
	    }
	
	}
	return 0;
}
