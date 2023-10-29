function gml_builder_build_line()
{
	var this = argument[0]
	if (this[3] >= this[4])
	    return gml_builder_error_at(this, "Expected a statement", gml_std_haxe_boot_wget(this[2], 7));
	var l_tk = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	var l_unknown = 0
	switch l_tk[0]
	{
	    case 9:
	        var l__g3 = l_tk[1]
	        switch l_tk[2]
	        {
	            case 1:
	                var l_d = l__g3
	                array_set(this, 11, [89, l_d, []])
	                while (this[3] < this[4])
	                {
	                    var l_tk2 = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	                    if (l_tk2[0] == 10)
	                    {
	                        l_d = l_tk2[1]
	                        var l_s = l_tk2[2]
	                        var l_i = array_length_1d(this[7])
	                        gml_std_haxe_boot_wset(this[7], l_i, l_s)
	                        gml_std_haxe_boot_wset(this[8], l_i, [35, l_d, l_s])
	                        if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 4)
	                        {
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            continue
	                        }
	                        else
	                            break
	                    }
	                    else
	                        return gml_builder_error(this, "Expected a global variable name.", l_tk2);
	                }
	                break
	            case 2:
	                var l_d2 = l__g3
	                var l_nodes = []
	                var l_proc = 1
	                while (l_proc && this[3] < this[4])
	                {
	                    l_tk2 = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	                    if (l_tk2[0] == 10)
	                    {
	                        if (this[3] >= this[4])
	                            return gml_builder_error_at(this, "Expected a variable value", gml_std_haxe_boot_wget(this[2], 7));
	                        l_tk = gml_std_haxe_boot_wget(this[1], this[3])
	                        if (l_tk[0] == 19)
	                        {
	                            if (l_tk[2] == -1)
	                            {
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                if gml_builder_build_expr(this, 0)
	                                    return 1;
	                            }
	                            else
	                                array_set(this, 11, undefined)
	                        }
	                        else
	                            array_set(this, 11, undefined)
	                        gml_std_array_hx_push(l_nodes, [88, l_tk2[1], l_tk2[2], this[11]])
	                        if (this[3] < this[4])
	                        {
	                            switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                            {
	                                case 4:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    break
	                                case 3:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    l_proc = 0
	                                    break
	                                default:
	                                    l_proc = 0
	                            }
	
	                        }
	                    }
	                    else
	                        return gml_builder_expect(this, "a variable name", l_tk2);
	                }
	                if (array_length_1d(l_nodes) != 1)
	                    array_set(this, 11, [89, l_d2, l_nodes])
	                else
	                    array_set(this, 11, l_nodes[0])
	                break
	            case 3:
	                var l__g5 = gml_std_haxe_boot_wget(this[1], this[3])
	                if (l__g5[0] == 10)
	                {
	                    var l_s2 = l__g5[2]
	                    var l_d5 = l__g5[1]
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    var l_e = gml_enum_create(l_s2, l_d5)
	                }
	                else
	                    return gml_builder_error(this, "Expected an enum name", gml_std_haxe_boot_wget(this[1], this[3]));
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected enum block", gml_std_haxe_boot_wget(this[2], 7));
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 24)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                    return gml_builder_error(this, "Expected enum block", gml_std_haxe_boot_wget(this[1], this[3]));
	                l_proc = 1
	                var l_sep = 1
	                while (this[3] < this[4] && l_proc)
	                {
	                    var l__g33 = gml_std_haxe_boot_wget(this[1], this[3])
	                    switch l__g33[0]
	                    {
	                        case 25:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            l_proc = 0
	                            break
	                        case 4:
	                            if l_sep
	                                return gml_builder_error(this, "Unexpected comma", gml_std_haxe_boot_wget(this[1], this[3]));
	                            else
	                            {
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                l_sep = 1
	                            }
	                            break
	                        case 10:
	                            if l_sep
	                            {
	                                array_set(this, 3, (array_get(this, 3) + 1))
	                                var l__g34 = gml_std_haxe_boot_wget(this[1], this[3])
	                                if (l__g34[0] == 19)
	                                {
	                                    if (l__g34[2] == -1)
	                                    {
	                                        array_set(this, 3, (array_get(this, 3) + 1))
	                                        if gml_builder_build_expr(this, 0)
	                                            return 1;
	                                    }
	                                    else
	                                        array_set(this, 11, undefined)
	                                }
	                                else
	                                    array_set(this, 11, undefined)
	                                var l_ec = gml_enum_ctr_create(l__g33[2], l__g33[1], this[11])
	                                gml_std_array_hx_push(l_e[3], l_ec)
	                                ds_map_set(l_e[4], l_ec[1], l_ec)
	                                l_sep = 0
	                            }
	                            else
	                                return gml_builder_expect(this, "a comma or a closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                            break
	                        default:
	                            return gml_builder_expect(this, "a comma, enum entry, or closing bracket", gml_std_haxe_boot_wget(this[1], this[3]));
	                    }
	
	                }
	                if l_proc
	                    return gml_builder_error(this, "Unclosed enum-block", l_tk);
	                gml_std_array_hx_push(this[6], l_e)
	                array_set(this, 11, [89, l__g3, []])
	                break
	            case 4:
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                var l_x1 = this[11]
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected a then-expression", gml_std_haxe_boot_wget(this[2], 7));
	                var l__g8 = gml_std_haxe_boot_wget(this[1], this[3])
	                if (l__g8[0] == 9)
	                {
	                    if (l__g8[2] == 5)
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                }
	                if gml_builder_build_line(this)
	                    return 1;
	                var l_x2 = this[11]
	                l_i = this[3]
	                while (this[3] < this[4])
	                {
	                    switch gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0)
	                    {
	                        case 29:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            continue
	                        case 28:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            continue
	                        case 27:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            continue
	                        default:
	                            break
	                    }
	
	                }
	                if (this[3] < this[4])
	                {
	                    var l__g36 = gml_std_haxe_boot_wget(this[1], this[3])
	                    if (l__g36[0] == 9)
	                    {
	                        if (l__g36[2] == 6)
	                        {
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            if gml_builder_build_line(this)
	                                return 1;
	                            var l_x = this[11]
	                        }
	                        else
	                        {
	                            array_set(this, 3, l_i)
	                            l_x = undefined
	                        }
	                    }
	                    else
	                    {
	                        array_set(this, 3, l_i)
	                        l_x = undefined
	                    }
	                }
	                else
	                {
	                    array_set(this, 3, l_i)
	                    l_x = undefined
	                }
	                array_set(this, 11, [90, l__g3, l_x1, l_x2, l_x])
	                break
	            case 7:
	                var l_d7 = l__g3
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_x1 = this[11]
	                var l_cc = []
	                var l_c = undefined
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected switch-block body", gml_std_haxe_boot_wget(this[2], 7));
	                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 24)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                else
	                    return gml_builder_error(this, "Expected switch-block body", gml_std_haxe_boot_wget(this[1], this[3]));
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected switch-block contents", gml_std_haxe_boot_wget(this[2], 7));
	                var l__g15 = gml_std_haxe_boot_wget(this[1], this[3])
	                switch l__g15[0]
	                {
	                    case 9:
	                        switch l__g15[2]
	                        {
	                            case 8:
	                            case 9:
	                                break
	                            default:
	                                return gml_builder_expect(this, "`case` or `default`", gml_std_haxe_boot_wget(this[1], this[3]));
	                        }
	
	                        break
	                    case 29:
	                        break
	                    case 28:
	                        break
	                    case 27:
	                        break
	                    default:
	                        return gml_builder_expect(this, "`case` or `default`", gml_std_haxe_boot_wget(this[1], this[3]));
	                }
	
	                l_proc = 1
	                l_x2 = undefined
	                l_nodes = undefined
	                var l_pre = []
	                while (this[3] < this[4] && l_proc)
	                {
	                    var l__g101 = gml_std_haxe_boot_wget(this[1], this[3])
	                    switch l__g101[0]
	                    {
	                        case 25:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            l_proc = 0
	                            break
	                        case 28:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            gml_std_array_hx_push(l_pre, [107, l__g101[1], l__g101[2]])
	                            break
	                        case 27:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            gml_std_array_hx_push(l_pre, [107, l__g101[1], l__g101[2]])
	                            break
	                        case 29:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            gml_std_array_hx_push(l_pre, [111, l__g101[1], l__g101[2]])
	                            break
	                        case 9:
	                            switch l__g101[2]
	                            {
	                                case 8:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    if gml_builder_build_expr(this, 0)
	                                        return 1;
	                                    if (this[3] >= this[4])
	                                        return gml_builder_error_at(this, "Expected a colon", gml_std_haxe_boot_wget(this[2], 7));
	                                    else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                                        array_set(this, 3, (array_get(this, 3) + 1))
	                                    else
	                                        return gml_builder_error(this, "Expected a colon", gml_std_haxe_boot_wget(this[1], this[3]));
	                                    l_nodes = [this[11]]
	                                    while (this[3] < this[4])
	                                    {
	                                        var l__g103 = gml_std_haxe_boot_wget(this[1], this[3])
	                                        if (l__g103[0] == 9)
	                                        {
	                                            if (l__g103[2] == 8)
	                                            {
	                                                array_set(this, 3, (array_get(this, 3) + 1))
	                                                if gml_builder_build_expr(this, 0)
	                                                    return 1;
	                                                if (this[3] >= this[4])
	                                                    return gml_builder_error_at(this, "Expected a colon", gml_std_haxe_boot_wget(this[2], 7));
	                                                else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                                else
	                                                    return gml_builder_error(this, "Expected a colon", gml_std_haxe_boot_wget(this[1], this[3]));
	                                                gml_std_array_hx_push(l_nodes, this[11])
	                                                continue
	                                            }
	                                            else
	                                                break
	                                        }
	                                        else
	                                            break
	                                    }
	                                    l_c = array_create(3)
	                                    l_c[1, 0] = "GmlNodeCase"
	                                    l_c[0] = l_nodes
	                                    l_c[1] = undefined
	                                    l_c[2] = l_pre
	                                    gml_std_array_hx_push(l_cc, l_c)
	                                    l_nodes = []
	                                    l_pre = []
	                                    array_set(l_c, 1, [89, l__g101[1], l_nodes])
	                                    break
	                                case 9:
	                                    array_set(this, 3, (array_get(this, 3) + 1))
	                                    if (this[3] >= this[4])
	                                        return gml_builder_error_at(this, "Expected a colon", gml_std_haxe_boot_wget(this[2], 7));
	                                    else if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 6)
	                                        array_set(this, 3, (array_get(this, 3) + 1))
	                                    else
	                                        return gml_builder_error(this, "Expected a colon", gml_std_haxe_boot_wget(this[1], this[3]));
	                                    l_nodes = []
	                                    l_x2 = [89, l__g101[1], l_nodes]
	                                    break
	                                default:
	                                    if gml_builder_build_line(this)
	                                        return 1;
	                                    gml_std_array_hx_push(l_nodes, this[11])
	                                    break
	                            }
	
	                            break
	                        default:
	                            if gml_builder_build_line(this)
	                                return 1;
	                            gml_std_array_hx_push(l_nodes, this[11])
	                            break
	                    }
	
	                }
	                if l_proc
	                    return gml_builder_error_at(this, "Unclosed switch-block", l_d7);
	                array_set(this, 11, [92, l_d7, l_x1, l_cc, l_x2])
	                break
	            case 14:
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected for-loop header", gml_std_haxe_boot_wget(this[2], 7));
	                if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 20)
	                {
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    l_proc = 1
	                }
	                else
	                    l_proc = 0
	                if gml_builder_build_line(this)
	                    return 1;
	                l_x = this[11]
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_x1 = this[11]
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected for-loop post-action", gml_std_haxe_boot_wget(this[2], 7));
	                if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 3)
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                if gml_builder_build_line(this)
	                    return 1;
	                l_x2 = this[11]
	                if l_proc
	                {
	                    if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 21)
	                        array_set(this, 3, (array_get(this, 3) + 1))
	                    else
	                        return gml_builder_expect(this, "a closing parenthesis", gml_std_haxe_boot_wget(this[1], this[3]));
	                }
	                if gml_builder_build_line(this)
	                    return 1;
	                array_set(this, 11, [99, l__g3, l_x, l_x1, l_x2, this[11]])
	                break
	            case 11:
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_x1 = this[11]
	                if gml_builder_build_line(this)
	                    return 1;
	                array_set(this, 11, [95, l__g3, l_x1, this[11]])
	                break
	            case 10:
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_x1 = this[11]
	                if gml_builder_build_line(this)
	                    return 1;
	                array_set(this, 11, [98, l__g3, l_x1, this[11]])
	                break
	            case 13:
	                var l_d13 = l__g3
	                if gml_builder_build_line(this)
	                    return 1;
	                l_x1 = this[11]
	                if (this[3] >= this[4])
	                    return gml_builder_error_at(this, "Expected a `while` or `until`", gml_std_haxe_boot_wget(this[2], 7));
	                var l__g17 = gml_std_haxe_boot_wget(this[1], this[3])
	                if (l__g17[0] == 9)
	                {
	                    switch l__g17[2]
	                    {
	                        case 11:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            if gml_builder_build_expr(this, 0)
	                                return 1;
	                            array_set(this, 11, [97, l_d13, l_x1, this[11]])
	                            break
	                        case 12:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            if gml_builder_build_expr(this, 0)
	                                return 1;
	                            array_set(this, 11, [96, l_d13, l_x1, this[11]])
	                            break
	                        default:
	                            return gml_builder_expect(this, "a `while` or `until`", gml_std_haxe_boot_wget(this[1], this[3]));
	                    }
	
	                }
	                else
	                    return gml_builder_expect(this, "a `while` or `until`", gml_std_haxe_boot_wget(this[1], this[3]));
	                break
	            case 15:
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                l_x1 = this[11]
	                if gml_builder_build_line(this)
	                    return 1;
	                array_set(this, 11, [100, l__g3, l_x1, this[11]])
	                break
	            case 17:
	                array_set(this, 11, [104, l__g3])
	                break
	            case 16:
	                array_set(this, 11, [105, l__g3])
	                break
	            case 19:
	                array_set(this, 11, [103, l__g3])
	                break
	            case 18:
	                var l_d18 = l__g3
	                var l__g24 = gml_std_haxe_boot_wget(this[1], this[3])
	                switch l__g24[0]
	                {
	                    case 25:
	                        array_set(this, 11, [103, l__g24[1]])
	                        break
	                    case 3:
	                        array_set(this, 11, [103, l__g24[1]])
	                        break
	                    default:
	                        if gml_builder_build_expr(this, 0)
	                            return 1;
	                        array_set(this, 11, [102, l_d18, this[11]])
	                }
	
	                break
	            case 20:
	                if gml_builder_build_expr(this, 0)
	                    return 1;
	                array_set(this, 11, [93, l__g3, this[11]])
	                break
	            case 23:
	                array_set(this, 11, [106, l__g3])
	                break
	            default:
	                l_unknown = 1
	        }
	
	        break
	    case 1:
	        var l__g = gml_std_haxe_boot_wget(this[1], array_set_post(this, 3, (array_get(this, 3) + 1)))
	        if (l__g[0] == 10)
	        {
	            if gml_builder_build_expr(this, 0)
	                return 1;
	            var l_i1 = array_length_1d(this[7])
	            gml_std_haxe_boot_wset(this[7], l_i1, l__g[2])
	            gml_std_haxe_boot_wset(this[8], l_i1, this[11])
	            array_set(this, 11, [89, l_tk[1], []])
	        }
	        else
	            gml_builder_error(this, "Expected a macro name", gml_std_haxe_boot_wget(this[1], this[3]))
	        break
	    case 24:
	        var l_start = l_tk[1]
	        l_proc = 1
	        l_nodes = []
	        if (this[3] < this[4])
	        {
	            var l__g25 = gml_std_haxe_boot_wget(this[1], this[3])
	            if (l__g25[0] == 27)
	            {
	                gml_std_array_hx_push(l_nodes, [107, l__g25[1], l__g25[2]])
	                array_set(this, 3, (array_get(this, 3) + 1))
	            }
	        }
	        while (l_proc && this[3] < this[4])
	        {
	            var l__g26 = gml_std_haxe_boot_wget(this[1], this[3])
	            switch l__g26[0]
	            {
	                case 25:
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    l_proc = 0
	                    break
	                case 28:
	                    array_set(this, 3, (array_get(this, 3) + 1))
	                    gml_std_array_hx_push(l_nodes, [107, l__g26[1], l__g26[2]])
	                    break
	                case 29:
	                    switch l__g26[3]
	                    {
	                        case 1:
	                            array_set(this, 3, (array_get(this, 3) + 1))
	                            gml_std_array_hx_push(l_nodes, [111, l__g26[1], l__g26[2]])
	                            break
	                        case 0:
	                            if gml_builder_build_line(this)
	                                return 1;
	                            gml_std_array_hx_push(l_nodes, [112, l__g26[1], l__g26[2], this[11], 0])
	                            break
	                    }
	
	                    break
	                default:
	                    if gml_builder_build_line(this)
	                        return 1;
	                    gml_std_array_hx_push(l_nodes, this[11])
	            }
	
	        }
	        if l_proc
	            return gml_builder_error_at(this, "Expected a closing bracket.", l_start);
	        array_set(this, 11, [89, l_start, l_nodes])
	        break
	    case 28:
	        if (this[3] < this[4])
	        {
	            if gml_builder_build_line(this)
	                return 1;
	            array_set(this, 11, [110, l_tk[1], l_tk[2], this[11]])
	        }
	        else
	            array_set(this, 11, [107, l_tk[1], l_tk[2]])
	        break
	    case 27:
	        if gml_builder_build_line(this)
	            return 1;
	        array_set(this, 11, [108, l_tk[1], l_tk[2], this[11]])
	        break
	    case 29:
	        if (this[3] < this[4])
	        {
	            if gml_builder_build_line(this)
	                return 1;
	            array_set(this, 11, [112, l_tk[1], l_tk[2], this[11], l_tk[3]])
	        }
	        else
	            array_set(this, 11, [111, l_tk[1], l_tk[2]])
	        break
	    default:
	        l_unknown = 1
	}
	
	if l_unknown
	    array_set(this, 3, (array_get(this, 3) - 1))
	if l_unknown
	{
	    if gml_builder_build_expr(this, 5)
	        return 1;
	    if (this[3] < this[4])
	    {
	        var l__g115 = gml_std_haxe_boot_wget(this[1], this[3])
	        if (l__g115[0] == 19)
	        {
	            l_x = this[11]
	            array_set(this, 3, (array_get(this, 3) + 1))
	            if gml_builder_build_expr(this, 0)
	                return 1;
	            array_set(this, 11, [28, l__g115[1], l__g115[2], l_x, this[11]])
	        }
	        else if (!gml_node_is_statement(this[11]))
	            return gml_builder_expect_node(this, "a statement", this[11]);
	    }
	    else if (!gml_node_is_statement(this[11]))
	        return gml_builder_expect_node(this, "a statement", this[11]);
	}
	while (this[3] < this[4])
	{
	    if (gml_std_haxe_boot_wget(gml_std_haxe_boot_wget(this[1], this[3]), 0) == 3)
	    {
	        array_set(this, 3, (array_get(this, 3) + 1))
	        continue
	    }
	    else
	        break
	}
	if (this[3] < this[4])
	{
	    var l__g117 = gml_std_haxe_boot_wget(this[1], this[3])
	    if (l__g117[0] == 27)
	    {
	        array_set(this, 3, (array_get(this, 3) + 1))
	        array_set(this, 11, [109, l__g117[1], this[11], l__g117[2]])
	    }
	}
	return 0;
}
