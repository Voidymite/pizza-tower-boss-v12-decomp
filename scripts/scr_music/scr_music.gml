function scr_music()
{
	if (!(global.modernized))
	{
		if (character == "P")
		{
			panicmusicID = mu_pizzatime;
			entrancemusicID = mu_entrance;
		}
		else
		{
			panicmusicID = mu_noiseescape;
			entrancemusicID = mu_noiseentrance;
		}
		tutorialmusicID = mu_tutorial;
		timesupmusicID = mu_timesup;
	}
	else
	{
		if (character == "P")
		{
			panicmusicID = mu_pizzatimeNEW;
			entrancemusicID = mu_entrancefinalgame;
		}
		else
		{
			panicmusicID = mu_distastefulanchovi;
			entrancemusicID = mu_noiseentrance;
		}	
		tutorialmusicID = mu_tutorialfinalgame;
		timesupmusicID = mu_timesupfinalgame;
	}
}