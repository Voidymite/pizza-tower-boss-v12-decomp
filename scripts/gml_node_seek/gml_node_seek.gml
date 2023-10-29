function gml_node_seek()
{
	var l_q = argument[0]
	var l_st = argument[1]
	var l_c = argument[2]
	if (l_st != undefined)
	    ds_list_insert(l_st, 0, l_q)
	var l__g = l_q
	switch l__g[0]
	{
	    case 0:
	        var l_r = 0
	        break
	    case 10:
	        l_r = 0
	        break
	    case 5:
	        var l_w = l__g[3]
	        var l_n = array_length_1d(l_w)
	        var l_i = 0
	        while (l_i < l_n)
	        {
	            if script_execute(l_c, l_w[l_i], l_st)
	                break
	            else
	            {
	                l_i++
	                continue
	            }
	        }
	        l_r = l_i < l_n
	        break
	    case 6:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 7:
	        l_r = 0
	        break
	    case 8:
	        l_r = 0
	        break
	    case 2:
	        l_r = 0
	        break
	    case 31:
	        var l_l_val = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_val, l_st))
	        break
	    case 11:
	        l_r = 0
	        break
	    case 3:
	        l_r = 0
	        break
	    case 14:
	        l_r = 0
	        break
	    case 15:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 16:
	        l_r = 0
	        break
	    case 17:
	        var l_l_args = l__g[3]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_w = l_l_args
	            l_n = array_length_1d(l_w)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                if script_execute(l_c, l_w[l_i], l_st)
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            l_r = l_i < l_n
	        }
	        break
	    case 18:
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        l_i = 0
	        while (l_i < l_n)
	        {
	            if script_execute(l_c, l_w[l_i], l_st)
	                break
	            else
	            {
	                l_i++
	                continue
	            }
	        }
	        l_r = l_i < l_n
	        break
	    case 19:
	        var l_l_args2 = l__g[4]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_w = l_l_args2
	            l_n = array_length_1d(l_w)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                if script_execute(l_c, l_w[l_i], l_st)
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            l_r = l_i < l_n
	        }
	        break
	    case 20:
	        var l_l_args3 = l__g[3]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_w = l_l_args3
	            l_n = array_length_1d(l_w)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                if script_execute(l_c, l_w[l_i], l_st)
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            l_r = l_i < l_n
	        }
	        break
	    case 21:
	        var l_l_args4 = l__g[4]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_w = l_l_args4
	            l_n = array_length_1d(l_w)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                if script_execute(l_c, l_w[l_i], l_st)
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            l_r = l_i < l_n
	        }
	        break
	    case 22:
	        l_w = l__g[3]
	        l_n = array_length_1d(l_w)
	        l_i = 0
	        while (l_i < l_n)
	        {
	            if script_execute(l_c, l_w[l_i], l_st)
	                break
	            else
	            {
	                l_i++
	                continue
	            }
	        }
	        l_r = l_i < l_n
	        break
	    case 23:
	        var l_l_args6 = l__g[4]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_w = l_l_args6
	            l_n = array_length_1d(l_w)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                if script_execute(l_c, l_w[l_i], l_st)
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            l_r = l_i < l_n
	        }
	        break
	    case 24:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 25:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 26:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 27:
	        var l_l_b = l__g[4]
	        l_r = (script_execute(l_c, l__g[3], l_st) || script_execute(l_c, l_l_b, l_st))
	        break
	    case 28:
	        var l_l_b1 = l__g[4]
	        l_r = (script_execute(l_c, l__g[3], l_st) || script_execute(l_c, l_l_b1, l_st))
	        break
	    case 29:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 9:
	        l_r = 0
	        break
	    case 94:
	        l_r = 0
	        break
	    case 32:
	        l_r = 0
	        break
	    case 33:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 34:
	        l_r = script_execute(l_c, l__g[4], l_st)
	        break
	    case 35:
	        l_r = 0
	        break
	    case 36:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 37:
	        l_r = script_execute(l_c, l__g[4], l_st)
	        break
	    case 38:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 39:
	        var l_l_val5 = l__g[4]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_val5, l_st))
	        break
	    case 41:
	        l_r = 0
	        break
	    case 42:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 43:
	        l_r = script_execute(l_c, l__g[4], l_st)
	        break
	    case 44:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 45:
	        var l_l_v2 = l__g[4]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_v2, l_st))
	        break
	    case 46:
	        var l_l_v3 = l__g[5]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_v3, l_st))
	        break
	    case 47:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 48:
	        var l_l_val9 = l__g[4]
	        l_r = (script_execute(l_c, l__g[3], l_st) || script_execute(l_c, l_l_val9, l_st))
	        break
	    case 49:
	        var l_l_val10 = l__g[5]
	        l_r = (script_execute(l_c, l__g[3], l_st) || script_execute(l_c, l_l_val10, l_st))
	        break
	    case 50:
	        var l_l_i = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i, l_st))
	        break
	    case 51:
	        var l_l_v4 = l__g[4]
	        var l_l_i1 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i1, l_st) || script_execute(l_c, l_l_v4, l_st))
	        break
	    case 52:
	        var l_l_v5 = l__g[5]
	        var l_l_i2 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i2, l_st) || script_execute(l_c, l_l_v5, l_st))
	        break
	    case 53:
	        var l_l_id16 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id16, l_st))
	        break
	    case 54:
	        var l_l_v6 = l__g[4]
	        var l_l_id17 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id17, l_st) || script_execute(l_c, l_l_v6, l_st))
	        break
	    case 55:
	        var l_l_v7 = l__g[5]
	        var l_l_id18 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id18, l_st) || script_execute(l_c, l_l_v7, l_st))
	        break
	    case 56:
	        var l_l_i3 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i3, l_st))
	        break
	    case 57:
	        var l_l_i4 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i4, l_st))
	        break
	    case 58:
	        var l_l_i21 = l__g[4]
	        var l_l_i11 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i11, l_st) || script_execute(l_c, l_l_i21, l_st))
	        break
	    case 59:
	        var l_l_v8 = l__g[5]
	        var l_l_i22 = l__g[4]
	        var l_l_i12 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i12, l_st) || script_execute(l_c, l_l_i22, l_st) || script_execute(l_c, l_l_v8, l_st))
	        break
	    case 60:
	        var l_l_v9 = l__g[6]
	        var l_l_i23 = l__g[4]
	        var l_l_i13 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i13, l_st) || script_execute(l_c, l_l_i23, l_st) || script_execute(l_c, l_l_v9, l_st))
	        break
	    case 61:
	        var l_l_k3 = l__g[4]
	        var l_l_i5 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i5, l_st) || script_execute(l_c, l_l_k3, l_st))
	        break
	    case 62:
	        var l_l_k4 = l__g[4]
	        var l_l_i6 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i6, l_st) || script_execute(l_c, l_l_k4, l_st))
	        break
	    case 63:
	        var l_l_id19 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id19, l_st))
	        break
	    case 64:
	        var l_l_v10 = l__g[4]
	        var l_l_id20 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id20, l_st) || script_execute(l_c, l_l_v10, l_st))
	        break
	    case 65:
	        var l_l_v11 = l__g[5]
	        var l_l_id21 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id21, l_st) || script_execute(l_c, l_l_v11, l_st))
	        break
	    case 66:
	        var l_l_i7 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i7, l_st))
	        break
	    case 67:
	        var l_l_i8 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i8, l_st))
	        break
	    case 68:
	        var l_l_i24 = l__g[4]
	        var l_l_i14 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i14, l_st) || script_execute(l_c, l_l_i24, l_st))
	        break
	    case 69:
	        var l_l_v12 = l__g[5]
	        var l_l_i25 = l__g[4]
	        var l_l_i15 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i15, l_st) || script_execute(l_c, l_l_i25, l_st) || script_execute(l_c, l_l_v12, l_st))
	        break
	    case 70:
	        var l_l_v13 = l__g[6]
	        var l_l_i26 = l__g[4]
	        var l_l_i16 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i16, l_st) || script_execute(l_c, l_l_i26, l_st) || script_execute(l_c, l_l_v13, l_st))
	        break
	    case 71:
	        var l_l_k5 = l__g[4]
	        var l_l_i9 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i9, l_st) || script_execute(l_c, l_l_k5, l_st))
	        break
	    case 72:
	        var l_l_k6 = l__g[4]
	        var l_l_i10 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i10, l_st) || script_execute(l_c, l_l_k6, l_st))
	        break
	    case 73:
	        var l_l_id22 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id22, l_st))
	        break
	    case 74:
	        var l_l_v14 = l__g[4]
	        var l_l_id23 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id23, l_st) || script_execute(l_c, l_l_v14, l_st))
	        break
	    case 75:
	        var l_l_v15 = l__g[5]
	        var l_l_id24 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id24, l_st) || script_execute(l_c, l_l_v15, l_st))
	        break
	    case 76:
	        var l_l_i17 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i17, l_st))
	        break
	    case 77:
	        var l_l_i18 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i18, l_st))
	        break
	    case 78:
	        var l_l_id25 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id25, l_st))
	        break
	    case 79:
	        var l_l_v16 = l__g[4]
	        var l_l_id26 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id26, l_st) || script_execute(l_c, l_l_v16, l_st))
	        break
	    case 80:
	        var l_l_v17 = l__g[5]
	        var l_l_id27 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_id27, l_st) || script_execute(l_c, l_l_v17, l_st))
	        break
	    case 81:
	        var l_l_i19 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i19, l_st))
	        break
	    case 82:
	        var l_l_i20 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i20, l_st))
	        break
	    case 83:
	        var l_l_i27 = l__g[4]
	        var l_l_i110 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i110, l_st) || script_execute(l_c, l_l_i27, l_st))
	        break
	    case 84:
	        var l_l_v18 = l__g[5]
	        var l_l_i28 = l__g[4]
	        var l_l_i111 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i111, l_st) || script_execute(l_c, l_l_i28, l_st) || script_execute(l_c, l_l_v18, l_st))
	        break
	    case 85:
	        var l_l_v19 = l__g[6]
	        var l_l_i29 = l__g[4]
	        var l_l_i112 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i112, l_st) || script_execute(l_c, l_l_i29, l_st) || script_execute(l_c, l_l_v19, l_st))
	        break
	    case 86:
	        var l_l_k7 = l__g[4]
	        var l_l_i30 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i30, l_st) || script_execute(l_c, l_l_k7, l_st))
	        break
	    case 87:
	        var l_l_k8 = l__g[4]
	        var l_l_i31 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_i31, l_st) || script_execute(l_c, l_l_k8, l_st))
	        break
	    case 88:
	        var l_l_value2 = l__g[3]
	        l_r = (l_l_value2 != undefined && script_execute(l_c, l_l_value2, l_st))
	        break
	    case 89:
	        l_w = l__g[2]
	        l_n = array_length_1d(l_w)
	        l_i = 0
	        while (l_i < l_n)
	        {
	            if script_execute(l_c, l_w[l_i], l_st)
	                break
	            else
	            {
	                l_i++
	                continue
	            }
	        }
	        l_r = l_i < l_n
	        break
	    case 90:
	        var l_l_not1 = l__g[4]
	        var l_l_then = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_then, l_st) || (l_l_not1 != undefined && script_execute(l_c, l_l_not1, l_st)))
	        break
	    case 91:
	        var l_l_not2 = l__g[4]
	        var l_l_then1 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_then1, l_st) || script_execute(l_c, l_l_not2, l_st))
	        break
	    case 30:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 93:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 113:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 95:
	        var l_l_node = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_node, l_st))
	        break
	    case 96:
	        var l_l_cond3 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_cond3, l_st))
	        break
	    case 97:
	        var l_l_cond4 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_cond4, l_st))
	        break
	    case 98:
	        var l_l_node3 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_node3, l_st))
	        break
	    case 99:
	        var l_l_loop = l__g[5]
	        var l_l_post = l__g[4]
	        var l_l_cond5 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_cond5, l_st) || script_execute(l_c, l_l_post, l_st) || script_execute(l_c, l_l_loop, l_st))
	        break
	    case 100:
	        var l_l_node4 = l__g[3]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_node4, l_st))
	        break
	    case 101:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 102:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 103:
	        l_r = 0
	        break
	    case 104:
	        l_r = 0
	        break
	    case 105:
	        l_r = 0
	        break
	    case 106:
	        l_r = 0
	        break
	    case 107:
	        l_r = 0
	        break
	    case 108:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 109:
	        l_r = script_execute(l_c, l__g[2], l_st)
	        break
	    case 110:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 111:
	        l_r = 0
	        break
	    case 112:
	        l_r = script_execute(l_c, l__g[3], l_st)
	        break
	    case 40:
	        var l_l_val6 = l__g[5]
	        l_r = (script_execute(l_c, l__g[2], l_st) || script_execute(l_c, l_l_val6, l_st))
	        break
	    case 13:
	        l_r = 0
	        break
	    case 4:
	        l_w = l__g[2]
	        l_n = array_length_1d(l_w)
	        l_i = 0
	        while (l_i < l_n)
	        {
	            if script_execute(l_c, l_w[l_i], l_st)
	                break
	            else
	            {
	                l_i++
	                continue
	            }
	        }
	        l_r = l_i < l_n
	        break
	    case 1:
	        l_r = 0
	        break
	    case 12:
	        l_r = 0
	        break
	    case 92:
	        var l_o = l__g[4]
	        var l_m = l__g[3]
	        if script_execute(l_c, l__g[2], l_st)
	            l_r = 1
	        else
	        {
	            l_n = array_length_1d(l_m)
	            l_i = 0
	            while (l_i < l_n)
	            {
	                l_w = gml_std_haxe_boot_wget(l_m[l_i], 0)
	                var l_l = array_length_1d(l_w)
	                var l_k = 0
	                while (l_k < l_l)
	                {
	                    if script_execute(l_c, l_w[l_k], l_st)
	                        break
	                    else
	                    {
	                        l_k++
	                        continue
	                    }
	                }
	                if (l_k < l_l || script_execute(l_c, gml_std_haxe_boot_wget(l_m[l_i], 1), l_st))
	                    break
	                else
	                {
	                    l_i++
	                    continue
	                }
	            }
	            if (l_i < l_n)
	                l_r = 1
	            else
	                l_r = (l_o != undefined && script_execute(l_c, l_o, l_st))
	        }
	        break
	}
	
	if (l_st != undefined)
	    ds_list_delete(l_st, 0)
	return l_r;
}
