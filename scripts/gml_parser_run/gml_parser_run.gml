function gml_parser_run()
{
	var l_src = argument[0]
	if (argument_count > 1)
	    var l_temStart = argument[1]
	else
	    l_temStart = -1
	var l_out = ds_list_create()
	if (l_temStart >= 0)
	{
	    var l_row = global.g_gml_parser_tem_row
	    var l_rowStart = global.g_gml_parser_tem_row_start
	    var l_pos = l_temStart
	}
	else
	{
	    l_row = 1
	    l_rowStart = 0
	    l_pos = 0
	}
	var l_code = l_src[2]
	var l_len = string_byte_length(l_code)
	var l_buf = global.g_gml_parser_src_buf
	var l_str = global.g_gml_parser_str_buf
	if (l_temStart < 0)
	{
	    if (buffer_get_size(l_str) < l_len)
	        buffer_resize(l_str, l_len)
	    buffer_seek(l_str, buffer_seek_start, 0)
	    buffer_write(l_str, buffer_string, l_code)
	    if (buffer_get_size(l_buf) < l_len)
	        buffer_resize(l_buf, l_len)
	    buffer_copy(global.g_gml_parser_str_buf, 0, l_len, l_buf, 0)
	}
	var l_sub_buf = global.g_gml_parser_buf_sub_buf
	var l_checkLine = 0
	var l_brackets = 0
	while (l_pos < l_len)
	{
	    var l_c = buffer_peek(l_buf, l_pos++, buffer_u8)
	    switch l_c
	    {
	        case 9:
	        case 13:
	        case 32:
	            break
	        case 10:
	            if l_checkLine
	            {
	                var l_i = (ds_list_size(l_out) - 1)
	                var l__g = ds_list_find_value(l_out, l_i)
	                if (l__g[0] == 0)
	                {
	                    if (l__g[3] == 0)
	                        ds_list_set(l_out, l_i, [0, l__g[1], l__g[2], 1])
	                }
	            }
	            l_row++
	            l_rowStart = l_pos
	            break
	        default:
	            var l_start = (l_pos - 1)
	            var l_d = gml_pos_create(l_src, l_row, (l_pos - l_rowStart))
	            switch l_c
	            {
	                case 59:
	                    ds_list_add(l_out, [3, l_d])
	                    break
	                case 44:
	                    ds_list_add(l_out, [4, l_d])
	                    break
	                case 46:
	                    l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                    if (l_c >= 48 && l_c <= 57)
	                    {
	                        while 1
	                        {
	                            l_pos++
	                            l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                            if (!((l_c >= 48 && l_c <= 57)))
	                                break
	                            else
	                                continue
	                        }
	                        var l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)
	                        ds_list_add(l_out, [13, l_d, gml_std_Std_parseFloat(l_s), l_s])
	                    }
	                    else
	                        ds_list_add(l_out, [5, l_d])
	                    break
	                case 58:
	                    ds_list_add(l_out, [6, l_d])
	                    break
	                case 63:
	                    ds_list_add(l_out, [7, l_d])
	                    break
	                case 64:
	                    l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                    if (l_c == 34 || l_c == 39)
	                    {
	                        l_pos++
	                        var l_n = l_pos
	                        l_i = buffer_peek(l_buf, l_pos, buffer_u8)
	                        if (l_c >= 192)
	                        {
	                            if (l_c >= 224)
	                            {
	                                if (l_c >= 240)
	                                    l_rowStart += 3
	                                else
	                                    l_rowStart += 2
	                            }
	                            else
	                                l_rowStart++
	                        }
	                        while (l_i != l_c && l_pos < l_len)
	                        {
	                            if (l_i == 10)
	                            {
	                                l_row++
	                                l_rowStart = l_pos
	                            }
	                            l_pos++
	                            l_i = buffer_peek(l_buf, l_pos, buffer_u8)
	                            if (l_c >= 192)
	                            {
	                                if (l_c >= 224)
	                                {
	                                    if (l_c >= 240)
	                                        l_rowStart += 3
	                                    else
	                                        l_rowStart += 2
	                                }
	                                else
	                                    l_rowStart++
	                            }
	                        }
	                        if (l_pos < l_len)
	                            l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_n, l_pos++)
	                        else
	                        {
	                            ds_list_destroy(l_out)
	                            gml_parser_error("Unclosed string", l_d, l_out)
	                            l_s = undefined
	                        }
	                        ds_list_add(l_out, [14, l_d, l_s])
	                    }
	                    else
	                        ds_list_add(l_out, [8, l_d])
	                    break
	                case 61:
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                    {
	                        l_pos++
	                        ds_list_add(l_out, [18, l_d, 64])
	                    }
	                    else
	                        ds_list_add(l_out, [19, l_d, -1])
	                    break
	                case 43:
	                    switch buffer_peek(l_buf, l_pos, buffer_u8)
	                    {
	                        case 61:
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, 16])
	                            break
	                        case 43:
	                            l_pos++
	                            ds_list_add(l_out, [17, l_d, 1])
	                            break
	                        default:
	                            ds_list_add(l_out, [18, l_d, 16])
	                    }
	
	                    break
	                case 45:
	                    switch buffer_peek(l_buf, l_pos, buffer_u8)
	                    {
	                        case 61:
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, 17])
	                            break
	                        case 45:
	                            l_pos++
	                            ds_list_add(l_out, [17, l_d, 0])
	                            break
	                        default:
	                            ds_list_add(l_out, [18, l_d, 17])
	                    }
	
	                    break
	                case 47:
	                    switch buffer_peek(l_buf, l_pos, buffer_u8)
	                    {
	                        case 47:
	                            l_pos++
	                            l_start = l_pos
	                            while (l_pos < l_len)
	                            {
	                                l_i = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_i == 10 || l_i == 13)
	                                    break
	                                else
	                                {
	                                    l_pos++
	                                    continue
	                                }
	                            }
	                            break
	                        case 42:
	                            l_pos++
	                            while 1
	                            {
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c >= 192)
	                                {
	                                    if (l_c >= 224)
	                                    {
	                                        if (l_c >= 240)
	                                            l_rowStart += 3
	                                        else
	                                            l_rowStart += 2
	                                    }
	                                    else
	                                        l_rowStart++
	                                }
	                                if (l_c == 10)
	                                {
	                                    l_row++
	                                    l_rowStart = l_pos
	                                }
	                                l_pos++
	                                if (l_pos < l_len)
	                                {
	                                    var l_z = 1
	                                    if (l_c == 42)
	                                    {
	                                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 47)
	                                            l_z = 0
	                                    }
	                                }
	                                else
	                                    l_z = 0
	                                if (!l_z)
	                                    break
	                                else
	                                    continue
	                            }
	                            l_i = l_pos
	                            l_z = 1
	                            l_pos++
	                            while (++l_i < l_len)
	                            {
	                                switch buffer_peek(l_buf, l_i, buffer_u8)
	                                {
	                                    case 9:
	                                    case 32:
	                                        continue
	                                    case 10:
	                                    case 13:
	                                        break
	                                    default:
	                                        l_z = 0
	                                        break
	                                }
	
	                            }
	                            break
	                        case 61:
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, 1])
	                            break
	                        default:
	                            var l_op = 1
	                            if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                            {
	                                l_pos++
	                                ds_list_add(l_out, [19, l_d, l_op])
	                            }
	                            else
	                                ds_list_add(l_out, [18, l_d, l_op])
	                            break
	                    }
	
	                    break
	                case 42:
	                    l_op = 0
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                    {
	                        l_pos++
	                        ds_list_add(l_out, [19, l_d, l_op])
	                    }
	                    else
	                        ds_list_add(l_out, [18, l_d, l_op])
	                    break
	                case 37:
	                    l_op = 2
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                    {
	                        l_pos++
	                        ds_list_add(l_out, [19, l_d, l_op])
	                    }
	                    else
	                        ds_list_add(l_out, [18, l_d, l_op])
	                    break
	                case 38:
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 38)
	                    {
	                        l_pos++
	                        l_op = 80
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    else
	                    {
	                        l_op = 49
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    break
	                case 124:
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 124)
	                    {
	                        l_pos++
	                        l_op = 96
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    else
	                    {
	                        l_op = 48
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    break
	                case 94:
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 94)
	                    {
	                        l_pos++
	                        l_op = 65
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    else
	                    {
	                        l_op = 50
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    break
	                case 62:
	                    switch buffer_peek(l_buf, l_pos, buffer_u8)
	                    {
	                        case 61:
	                            l_pos++
	                            ds_list_add(l_out, [18, l_d, 69])
	                            break
	                        case 62:
	                            l_pos++
	                            l_op = 33
	                            if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                            {
	                                l_pos++
	                                ds_list_add(l_out, [19, l_d, l_op])
	                            }
	                            else
	                                ds_list_add(l_out, [18, l_d, l_op])
	                            break
	                        default:
	                            ds_list_add(l_out, [18, l_d, 68])
	                    }
	
	                    break
	                case 60:
	                    switch buffer_peek(l_buf, l_pos, buffer_u8)
	                    {
	                        case 61:
	                            l_pos++
	                            ds_list_add(l_out, [18, l_d, 67])
	                            break
	                        case 60:
	                            l_pos++
	                            l_op = 32
	                            if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                            {
	                                l_pos++
	                                ds_list_add(l_out, [19, l_d, l_op])
	                            }
	                            else
	                                ds_list_add(l_out, [18, l_d, l_op])
	                            break
	                        case 62:
	                            l_pos++
	                            l_op = 65
	                            if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                            {
	                                l_pos++
	                                ds_list_add(l_out, [19, l_d, l_op])
	                            }
	                            else
	                                ds_list_add(l_out, [18, l_d, l_op])
	                            break
	                        default:
	                            ds_list_add(l_out, [18, l_d, 66])
	                    }
	
	                    break
	                case 33:
	                    if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                    {
	                        l_pos++
	                        l_op = 65
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 61)
	                        {
	                            l_pos++
	                            ds_list_add(l_out, [19, l_d, l_op])
	                        }
	                        else
	                            ds_list_add(l_out, [18, l_d, l_op])
	                    }
	                    else
	                        ds_list_add(l_out, [15, l_d, 1])
	                    break
	                case 126:
	                    ds_list_add(l_out, [15, l_d, 2])
	                    break
	                case 40:
	                    ds_list_add(l_out, [20, l_d])
	                    break
	                case 41:
	                    ds_list_add(l_out, [21, l_d])
	                    break
	                case 91:
	                    ds_list_add(l_out, [22, l_d])
	                    break
	                case 93:
	                    ds_list_add(l_out, [23, l_d])
	                    break
	                case 123:
	                    l_brackets++
	                    ds_list_add(l_out, [24, l_d])
	                    break
	                case 125:
	                    l_brackets--
	                    if (l_temStart >= 0 && l_brackets < 0)
	                    {
	                        if (l_temStart >= 0)
	                        {
	                            global.g_gml_parser_tem_end = l_pos
	                            global.g_gml_parser_tem_row = l_row
	                            global.g_gml_parser_tem_row_start = l_rowStart
	                        }
	                        l_n = ds_list_size(l_out)
	                        var l_tks = array_create(l_n)
	                        for (l_i = 0; l_i < l_n; l_i++)
	                            array_set(l_tks, l_i, ds_list_find_value(l_out, l_i))
	                        ds_list_destroy(l_out)
	                        return l_tks;
	                    }
	                    else
	                        ds_list_add(l_out, [25, l_d])
	                    break
	                case 34:
	                    l_z = 1
	                    l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                    if (l_c >= 192)
	                    {
	                        if (l_c >= 224)
	                        {
	                            if (l_c >= 240)
	                                l_rowStart += 3
	                            else
	                                l_rowStart += 2
	                        }
	                        else
	                            l_rowStart++
	                    }
	                    while (l_pos < l_len)
	                    {
	                        switch l_c
	                        {
	                            case 34:
	                                break
	                            case 10:
	                            case 13:
	                                ds_list_destroy(l_out)
	                                l_tks = gml_parser_error("Unclosed string", l_d, l_out)
	                                return l_tks;
	                            case 92:
	                                if l_z
	                                {
	                                    l_z = 0
	                                    buffer_seek(l_str, buffer_seek_start, 0)
	                                }
	                                l_s = gml_parser_buf_sub(l_buf, l_sub_buf, (l_start + 1), l_pos)
	                                buffer_write(l_str, buffer_text, l_s)
	                                l_pos++
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c >= 192)
	                                {
	                                    if (l_c >= 224)
	                                    {
	                                        if (l_c >= 240)
	                                            l_rowStart += 3
	                                        else
	                                            l_rowStart += 2
	                                    }
	                                    else
	                                        l_rowStart++
	                                }
	                                switch l_c
	                                {
	                                    case 114:
	                                        buffer_write(l_str, buffer_u8, 13)
	                                        break
	                                    case 110:
	                                        buffer_write(l_str, buffer_u8, 10)
	                                        break
	                                    case 116:
	                                        buffer_write(l_str, buffer_u8, 9)
	                                        break
	                                    case 98:
	                                        buffer_write(l_str, buffer_u8, 8)
	                                        break
	                                    case 102:
	                                        buffer_write(l_str, buffer_u8, 12)
	                                        break
	                                    case 118:
	                                        buffer_write(l_str, buffer_u8, 11)
	                                        break
	                                    case 92:
	                                        buffer_write(l_str, buffer_u8, 92)
	                                        break
	                                    case 97:
	                                        buffer_write(l_str, buffer_u8, 7)
	                                        break
	                                    case 10:
	                                        l_row++
	                                        l_rowStart = l_pos
	                                        break
	                                    case 117:
	                                    case 120:
	                                        l_n = 0
	                                        if (l_c == 117)
	                                            l_i = 12
	                                        else
	                                            l_i = 4
	                                        while (l_i >= 0)
	                                        {
	                                            l_pos++
	                                            l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                            if (l_c >= 48 && l_c <= 57)
	                                                l_c -= 48
	                                            else if (l_c >= 65 && l_c <= 70)
	                                                l_c -= 55
	                                            else if (l_c >= 97 && l_c <= 102)
	                                                l_c -= 87
	                                            else
	                                                l_c = 0
	                                            l_n |= (l_c << l_i)
	                                            l_i -= 4
	                                        }
	                                        buffer_write(l_str, buffer_u8, l_n)
	                                        break
	                                    default:
	                                        buffer_write(l_str, buffer_u8, l_c)
	                                        if (l_c == 13)
	                                        {
	                                            l_pos++
	                                            if (buffer_peek(l_buf, l_pos, buffer_u8) == 10)
	                                            {
	                                                buffer_write(l_str, buffer_u8, 10)
	                                                break
	                                            }
	                                            else
	                                                l_pos--
	                                        }
	                                }
	                            default:
	                                l_pos++
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c >= 192)
	                                {
	                                    if (l_c >= 224)
	                                    {
	                                        if (l_c >= 240)
	                                            l_rowStart += 3
	                                        else
	                                            l_rowStart += 2
	                                    }
	                                    else
	                                        l_rowStart++
	                                }
	                                continue
	                        }
	
	                    }
	                    if (l_pos >= l_len)
	                    {
	                        ds_list_destroy(l_out)
	                        l_tks = gml_parser_error("Unclosed string", l_d, l_out)
	                        return l_tks;
	                    }
	                    else
	                        l_pos++
	                    if l_z
	                        l_s = gml_parser_buf_sub(l_buf, l_sub_buf, (l_start + 1), (l_pos - 1))
	                    else
	                    {
	                        l_s = gml_parser_buf_sub(l_buf, l_sub_buf, (l_start + 1), (l_pos - 1))
	                        buffer_write(l_str, buffer_text, l_s)
	                        buffer_write(l_str, buffer_u8, 0)
	                        buffer_seek(l_str, buffer_seek_start, 0)
	                        l_s = buffer_read(l_str, buffer_string)
	                    }
	                    ds_list_add(l_out, [14, l_d, l_s])
	                    break
	                case 39:
	                    ds_list_destroy(l_out)
	                    l_tks = gml_parser_error("Single quotes are not allowed for strings.", l_d, l_out)
	                    return l_tks;
	                case 35:
	                    l_start = l_pos
	                    while (l_pos < l_len)
	                    {
	                        l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                        if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57))
	                        {
	                            l_pos++
	                            continue
	                        }
	                        else
	                            break
	                    }
	                    switch gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)
	                    {
	                        case "define":
	                            l_start = l_pos
	                            while (l_pos < l_len)
	                            {
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c == 32 || l_c == 9)
	                                {
	                                    l_pos++
	                                    continue
	                                }
	                                else
	                                    break
	                            }
	                            if ((l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90)) && l_pos < l_len)
	                            {
	                                l_start = l_pos
	                                l_pos++
	                                while (l_pos < l_len)
	                                {
	                                    l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                    if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57))
	                                    {
	                                        l_pos++
	                                        continue
	                                    }
	                                    else
	                                        break
	                                }
	                                ds_list_add(l_out, [0, l_d, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos), 0])
	                                l_checkLine = 1
	                            }
	                            else
	                            {
	                                ds_list_destroy(l_out)
	                                l_tks = gml_parser_error("Expected a script name", l_d, l_out)
	                                return l_tks;
	                            }
	                            break
	                        case "macro":
	                            ds_list_add(l_out, [1, l_d])
	                            break
	                        case "endregion":
	                        case "region":
	                            while (l_pos < l_len)
	                            {
	                                l_i = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_i == 10 || l_i == 13)
	                                    break
	                                else
	                                {
	                                    l_pos++
	                                    continue
	                                }
	                            }
	                            break
	                        default:
	                            ds_list_add(l_out, [2, l_d])
	                            l_pos = l_start
	                    }
	
	                    break
	                case 36:
	                    l_i = 0
	                    while (l_pos < l_len)
	                    {
	                        l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                        if (l_c >= 48 && l_c <= 57)
	                        {
	                            l_i = ((l_i << 4) | (l_c - 48))
	                            l_pos++
	                            continue
	                        }
	                        else if (l_c >= 97 && l_c <= 102)
	                        {
	                            l_i = ((l_i << 4) | (l_c - 87))
	                            l_pos++
	                            continue
	                        }
	                        else if (l_c >= 65 && l_c <= 70)
	                        {
	                            l_i = ((l_i << 4) | (l_c - 55))
	                            l_pos++
	                            continue
	                        }
	                        else
	                            break
	                    }
	                    ds_list_add(l_out, [13, l_d, l_i, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)])
	                    break
	                default:
	                    if ((l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || l_c == 95)
	                    {
	                        while (l_pos < l_len)
	                        {
	                            l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                            if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90) || (l_c >= 48 && l_c <= 57))
	                            {
	                                l_pos++
	                                continue
	                            }
	                            else
	                                break
	                        }
	                        l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)
	                        switch l_s
	                        {
	                            case "global":
	                                ds_list_add(l_out, [9, l_d, 0])
	                                break
	                            case "true":
	                                ds_list_add(l_out, [13, l_d, 1, undefined])
	                                break
	                            case "false":
	                                ds_list_add(l_out, [13, l_d, 0, undefined])
	                                break
	                            case "all":
	                                ds_list_add(l_out, [13, l_d, -3, undefined])
	                                break
	                            case "noone":
	                                ds_list_add(l_out, [13, l_d, -4, undefined])
	                                break
	                            case "undefined":
	                                ds_list_add(l_out, [12, l_d])
	                                break
	                            case "begin":
	                                ds_list_add(l_out, [24, l_d])
	                                break
	                            case "end":
	                                ds_list_add(l_out, [25, l_d])
	                                break
	                            case "globalvar":
	                                ds_list_add(l_out, [9, l_d, 1])
	                                break
	                            case "var":
	                                ds_list_add(l_out, [9, l_d, 2])
	                                break
	                            case "enum":
	                                ds_list_add(l_out, [9, l_d, 3])
	                                break
	                            case "if":
	                                ds_list_add(l_out, [9, l_d, 4])
	                                break
	                            case "then":
	                                ds_list_add(l_out, [9, l_d, 5])
	                                break
	                            case "else":
	                                ds_list_add(l_out, [9, l_d, 6])
	                                break
	                            case "switch":
	                                ds_list_add(l_out, [9, l_d, 7])
	                                break
	                            case "case":
	                                ds_list_add(l_out, [9, l_d, 8])
	                                break
	                            case "default":
	                                ds_list_add(l_out, [9, l_d, 9])
	                                break
	                            case "for":
	                                ds_list_add(l_out, [9, l_d, 14])
	                                break
	                            case "repeat":
	                                ds_list_add(l_out, [9, l_d, 10])
	                                break
	                            case "while":
	                                ds_list_add(l_out, [9, l_d, 11])
	                                break
	                            case "do":
	                                ds_list_add(l_out, [9, l_d, 13])
	                                break
	                            case "until":
	                                ds_list_add(l_out, [9, l_d, 12])
	                                break
	                            case "with":
	                                ds_list_add(l_out, [9, l_d, 15])
	                                break
	                            case "exit":
	                                ds_list_add(l_out, [9, l_d, 19])
	                                break
	                            case "return":
	                                ds_list_add(l_out, [9, l_d, 18])
	                                break
	                            case "break":
	                                ds_list_add(l_out, [9, l_d, 17])
	                                break
	                            case "continue":
	                                ds_list_add(l_out, [9, l_d, 16])
	                                break
	                            case "div":
	                                ds_list_add(l_out, [18, l_d, 3])
	                                break
	                            case "mod":
	                                ds_list_add(l_out, [18, l_d, 2])
	                                break
	                            case "and":
	                                ds_list_add(l_out, [18, l_d, 80])
	                                break
	                            case "or":
	                                ds_list_add(l_out, [18, l_d, 96])
	                                break
	                            case "xor":
	                                ds_list_add(l_out, [18, l_d, 65])
	                                break
	                            case "not":
	                                ds_list_add(l_out, [15, l_d, 1])
	                                break
	                            case "in":
	                                ds_list_add(l_out, [16, l_d])
	                                break
	                            case "argument":
	                                ds_list_add(l_out, [9, l_d, 21])
	                                break
	                            case "argument_count":
	                                ds_list_add(l_out, [9, l_d, 22])
	                                break
	                            default:
	                                if gml_std_string_hx_startsWith(l_s, "argument")
	                                {
	                                    var l_s_8 = string_delete(l_s, 1, 8)
	                                    if (string_digits(l_s_8) == l_s_8)
	                                        ds_list_add(l_out, [26, l_d, gml_std_Std_parseInt(l_s_8)])
	                                    else
	                                        ds_list_add(l_out, [10, l_d, l_s])
	                                    break
	                                }
	                                else
	                                    ds_list_add(l_out, [10, l_d, l_s])
	                        }
	
	                    }
	                    else if ((l_c >= 48 && l_c <= 57) || l_c == 46)
	                    {
	                        if (buffer_peek(l_buf, l_pos, buffer_u8) == 120)
	                        {
	                            l_pos++
	                            l_i = 0
	                            while (l_pos < l_len)
	                            {
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c >= 48 && l_c <= 57)
	                                {
	                                    l_i = ((l_i << 4) | (l_c - 48))
	                                    l_pos++
	                                    continue
	                                }
	                                else if (l_c >= 97 && l_c <= 102)
	                                {
	                                    l_i = ((l_i << 4) | (l_c - 87))
	                                    l_pos++
	                                    continue
	                                }
	                                else if (l_c >= 65 && l_c <= 70)
	                                {
	                                    l_i = ((l_i << 4) | (l_c - 55))
	                                    l_pos++
	                                    continue
	                                }
	                                else
	                                    break
	                            }
	                            ds_list_add(l_out, [13, l_d, l_i, gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)])
	                        }
	                        else
	                        {
	                            l_pos--
	                            l_z = 0
	                            l_s = undefined
	                            while (l_pos < l_len)
	                            {
	                                l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                if (l_c == 46)
	                                {
	                                    if l_z
	                                    {
	                                        ds_list_destroy(l_out)
	                                        l_tks = gml_parser_error("Extra dot in a number", l_d, l_out)
	                                        return l_tks;
	                                    }
	                                    else
	                                    {
	                                        l_pos++
	                                        l_c = buffer_peek(l_buf, l_pos, buffer_u8)
	                                        if (l_c == 95 || (l_c >= 97 && l_c <= 122) || (l_c >= 65 && l_c <= 90))
	                                        {
	                                            l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, (l_pos - 2))
	                                            ds_list_add(l_out, [13, l_d, gml_std_Std_parseFloat(l_s), l_s])
	                                            l_d = gml_pos_create(l_src, l_row, (l_pos - l_rowStart))
	                                            ds_list_add(l_out, [5, l_d])
	                                            break
	                                        }
	                                        else
	                                        {
	                                            l_z = 1
	                                            continue
	                                        }
	                                    }
	                                }
	                                else if (l_c >= 48 && l_c <= 57)
	                                {
	                                    l_pos++
	                                    continue
	                                }
	                                else
	                                    break
	                            }
	                            if (l_s == undefined)
	                            {
	                                while (buffer_peek(l_buf, l_start, buffer_u8) == 48)
	                                {
	                                    l_start++
	                                    if (l_start >= l_pos)
	                                    {
	                                        l_start--
	                                        break
	                                    }
	                                    else if (buffer_peek(l_buf, l_start, buffer_u8) == 46)
	                                    {
	                                        l_start--
	                                        break
	                                    }
	                                    else
	                                        continue
	                                }
	                                l_s = gml_parser_buf_sub(l_buf, l_sub_buf, l_start, l_pos)
	                                ds_list_add(l_out, [13, l_d, gml_std_Std_parseFloat(l_s), l_s])
	                            }
	                        }
	                    }
	                    else
	                    {
	                        var l_text = (("Unexpected character `" + chr(l_c)) + "`")
	                        ds_list_destroy(l_out)
	                        l_tks = gml_parser_error(l_text, l_d, l_out)
	                        return l_tks;
	                    }
	                    break
	            }
	
	            break
	    }
	
	}
	if (l_temStart >= 0)
	{
	    global.g_gml_parser_tem_end = l_pos
	    global.g_gml_parser_tem_row = l_row
	    global.g_gml_parser_tem_row_start = l_rowStart
	}
	l_n = ds_list_size(l_out)
	l_tks = array_create(l_n)
	for (l_i = 0; l_i < l_n; l_i++)
	    array_set(l_tks, l_i, ds_list_find_value(l_out, l_i))
	ds_list_destroy(l_out)
	return l_tks;
}
