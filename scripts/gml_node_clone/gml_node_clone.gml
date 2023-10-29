function gml_node_clone()
{
	var l_q = argument[0]
	var l_d = l_q[1]
	var l__g = l_q
	switch l__g[0]
	{
	    case 0:
	        return [0, l_d];
	    case 10:
	        return [10, l_d];
	    case 5:
	        var l_xw = gml_std_array_hx_copy(l__g[3])
	        var l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        var l_cop = []
	        array_copy(l_cop, 0, l__g[2], 0, array_length_1d(l__g[2]))
	        return [5, l_d, l_cop, l_xw];
	    case 6:
	        return [6, l_d, gml_node_clone(l__g[2])];
	    case 7:
	        return [7, l_d, l__g[2]];
	    case 8:
	        return [8, l_d];
	    case 2:
	        return [2, l_d, l__g[2]];
	    case 31:
	        return [31, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 11:
	        return [11, l_d, l__g[2]];
	    case 3:
	        return [3, l_d, l__g[2], l__g[3]];
	    case 14:
	        return [14, l_d, l__g[2]];
	    case 15:
	        return [15, l_d, gml_node_clone(l__g[2])];
	    case 16:
	        return [16, l_d];
	    case 17:
	        l_xw = gml_std_array_hx_copy(l__g[3])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [17, l_d, gml_node_clone(l__g[2]), l_xw];
	    case 18:
	        l_xw = gml_std_array_hx_copy(l__g[3])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [18, l_d, l__g[2], l_xw];
	    case 19:
	        l_xw = gml_std_array_hx_copy(l__g[4])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [19, l_d, gml_node_clone(l__g[2]), l__g[3], l_xw];
	    case 20:
	        l_xw = gml_std_array_hx_copy(l__g[3])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [20, l_d, gml_node_clone(l__g[2]), l_xw];
	    case 21:
	        l_xw = gml_std_array_hx_copy(l__g[4])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [21, l_d, gml_node_clone(l__g[2]), l__g[3], l_xw];
	    case 22:
	        l_xw = gml_std_array_hx_copy(l__g[3])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [22, l_d, l__g[2], l_xw];
	    case 23:
	        l_xw = gml_std_array_hx_copy(l__g[4])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [23, l_d, gml_node_clone(l__g[2]), l__g[3], l_xw];
	    case 24:
	        return [24, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 25:
	        return [25, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 26:
	        return [26, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 27:
	        return [27, l_d, l__g[2], gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 28:
	        return [28, l_d, l__g[2], gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 29:
	        return [29, l_d, gml_node_clone(l__g[2])];
	    case 9:
	        return [9, l_d];
	    case 94:
	        return [94, l_d];
	    case 32:
	        return [32, l_d, l__g[2]];
	    case 33:
	        return [33, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 34:
	        return [34, l_d, l__g[2], l__g[3], gml_node_clone(l__g[4])];
	    case 35:
	        return [35, l_d, l__g[2]];
	    case 36:
	        return [36, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 37:
	        return [37, l_d, l__g[2], l__g[3], gml_node_clone(l__g[4])];
	    case 38:
	        return [38, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 39:
	        return [39, l_d, gml_node_clone(l__g[2]), l__g[3], gml_node_clone(l__g[4])];
	    case 41:
	        return [41, l_d, l__g[2]];
	    case 42:
	        return [42, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 43:
	        return [43, l_d, l__g[2], l__g[3], gml_node_clone(l__g[4])];
	    case 44:
	        return [44, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 45:
	        return [45, l_d, gml_node_clone(l__g[2]), l__g[3], gml_node_clone(l__g[4])];
	    case 46:
	        return [46, l_d, gml_node_clone(l__g[2]), l__g[3], l__g[4], gml_node_clone(l__g[5])];
	    case 47:
	        return [47, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 48:
	        return [48, l_d, l__g[2], gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 49:
	        return [49, l_d, l__g[2], gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 50:
	        return [50, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 51:
	        return [51, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 52:
	        return [52, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 53:
	        return [53, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 54:
	        return [54, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 55:
	        return [55, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 56:
	        return [56, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 57:
	        return [57, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 58:
	        return [58, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 59:
	        return [59, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), gml_node_clone(l__g[5])];
	    case 60:
	        return [60, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5], gml_node_clone(l__g[6])];
	    case 61:
	        return [61, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 62:
	        return [62, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 63:
	        return [63, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 64:
	        return [64, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 65:
	        return [65, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 66:
	        return [66, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 67:
	        return [67, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 68:
	        return [68, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 69:
	        return [69, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), gml_node_clone(l__g[5])];
	    case 70:
	        return [70, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5], gml_node_clone(l__g[6])];
	    case 71:
	        return [71, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 72:
	        return [72, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 73:
	        return [73, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 74:
	        return [74, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 75:
	        return [75, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 76:
	        return [76, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 77:
	        return [77, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 78:
	        return [78, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 79:
	        return [79, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 80:
	        return [80, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4], gml_node_clone(l__g[5])];
	    case 81:
	        return [81, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 82:
	        return [82, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), l__g[4]];
	    case 83:
	        return [83, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 84:
	        return [84, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), gml_node_clone(l__g[5])];
	    case 85:
	        return [85, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5], gml_node_clone(l__g[6])];
	    case 86:
	        return [86, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 87:
	        return [87, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), l__g[5]];
	    case 88:
	        return [88, l_d, l__g[2], gml_node_clone_opt(l__g[3])];
	    case 89:
	        l_xw = gml_std_array_hx_copy(l__g[2])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [89, l_d, l_xw];
	    case 90:
	        return [90, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone_opt(l__g[4])];
	    case 91:
	        return [91, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4])];
	    case 30:
	        return [30, l_d, gml_node_clone(l__g[2])];
	    case 93:
	        return [93, l_d, gml_node_clone(l__g[2])];
	    case 113:
	        return [113, l_d, gml_node_clone(l__g[2]), l__g[3], l__g[4]];
	    case 95:
	        return [95, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 96:
	        return [96, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 97:
	        return [97, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 98:
	        return [98, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 99:
	        return [99, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3]), gml_node_clone(l__g[4]), gml_node_clone(l__g[5])];
	    case 100:
	        return [100, l_d, gml_node_clone(l__g[2]), gml_node_clone(l__g[3])];
	    case 101:
	        return [101, l_d, gml_node_clone(l__g[2])];
	    case 102:
	        return [102, l_d, gml_node_clone(l__g[2])];
	    case 103:
	        return [103, l_d];
	    case 104:
	        return [104, l_d];
	    case 105:
	        return [105, l_d];
	    case 106:
	        return [106, l_d];
	    case 107:
	        return [107, l_d, l__g[2]];
	    case 108:
	        return [108, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 109:
	        return [109, l_d, gml_node_clone(l__g[2]), l__g[3]];
	    case 110:
	        return [110, l_d, l__g[2], gml_node_clone(l__g[3])];
	    case 111:
	        return [111, l_d, l__g[2]];
	    case 112:
	        return [112, l_d, l__g[2], gml_node_clone(l__g[3]), l__g[4]];
	    case 40:
	        return [40, l_d, gml_node_clone(l__g[2]), l__g[3], l__g[4], gml_node_clone(l__g[5])];
	    case 13:
	        return [13, l_d, l__g[2]];
	    case 4:
	        l_xw = gml_std_array_hx_copy(l__g[2])
	        l_fi = array_length_1d(l_xw)
	        while (--l_fi >= 0)
	            array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	        return [4, l_d, l_xw];
	    case 1:
	        return [1, l_d, l__g[2], l__g[3]];
	    case 12:
	        return [12, l__g[1], l__g[2], l__g[3]];
	    case 92:
	        var l_m = l__g[3]
	        l_m = gml_std_array_hx_copy(l_m)
	        var l_n = array_length_1d(l_m)
	        for (var l_i = 0; l_i < l_n; l_i++)
	        {
	            var l_cc = l_m[l_i]
	            l_xw = gml_std_array_hx_copy(l_cc[0])
	            l_fi = array_length_1d(l_xw)
	            while (--l_fi >= 0)
	                array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	            l_cc = array_create(3)
	            l_cc[1, 0] = "GmlNodeCase"
	            l_cc[0] = l_xw
	            l_cc[1] = gml_node_clone(l_cc[1])
	            l_cc[2] = l_cc[2]
	            array_set(l_m, l_i, l_cc)
	            l_xw = gml_std_array_hx_copy(l_cc[2])
	            l_fi = array_length_1d(l_xw)
	            while (--l_fi >= 0)
	                array_set(l_xw, l_fi, gml_node_clone(l_xw[l_fi]))
	            array_set(l_cc, 2, l_xw)
	        }
	        return [92, l__g[1], gml_node_clone(l__g[2]), l_m, gml_node_clone_opt(l__g[4])];
	}
	
}
