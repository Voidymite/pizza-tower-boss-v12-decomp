function __lnc__f340()
{
	if (argument_count < 2)
	{
	    gml_thread_error(("gif_open needs at least 2 arguments, got " + string(argument_count)))
	    return 0;
	}
	else
	{
	    switch argument_count
	    {
	        case 2:
	            gif_open(argument[0], argument[1])
	            break
	        case 3:
	            gif_open(argument[0], argument[1], argument[2])
	            break
	        case 4:
	            gif_open(argument[0], argument[1], argument[2], argument[3])
	            break
	        case 5:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4])
	            break
	        case 6:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5])
	            break
	        case 7:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6])
	            break
	        case 8:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7])
	            break
	        case 9:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8])
	            break
	        case 10:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9])
	            break
	        case 11:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10])
	            break
	        case 12:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11])
	            break
	        case 13:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12])
	            break
	        case 14:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13])
	            break
	        case 15:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13], argument[14])
	            break
	        case 16:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13], argument[14], argument[15])
	            break
	        case 17:
	            gif_open(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], argument[8], argument[9], argument[10], argument[11], argument[12], argument[13], argument[14], argument[15], argument[16])
	            break
	        default:
	            gml_thread_error(("gif_open takes at most 18 arguments, got " + string(argument_count)))
	    }
	
	}
}
