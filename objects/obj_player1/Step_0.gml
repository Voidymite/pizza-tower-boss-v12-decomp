// get player input every frame
scr_getinput();
// get sprites
scr_characterspr();
// state machine
switch (state)
{
	// this is the first time ive manually made a state machine with enums bare with me
	// please watch kid cosmic
    case states.normal:
        scr_player_normal();
        break;
    case states.grabbed:
        scr_player_grabbed();
        break;
    case states.finishingblow:
        scr_player_finishingblow();
        break;
    case states.tumble:
        scr_player_tumble();
        break;
	// do nothing state
    case states.titlescreen:
        scr_player_titlescreen();
        break;
    case states.ejected:
        scr_player_ejected();
        break;
    case states.firemouth:
        scr_player_firemouth();
        break;
	// firebutt is the real name of the "transfo" so
    case states.firebutt:
        scr_player_fireass();
        break;
	// however... i am not evil
    case states.fireass:
        scr_player_fireass();
        break;
    case states.transitioncutscene:
        scr_player_transitioncutscene();
        break;
    case states.hookshot:
        scr_playerN_hookshot();
        break;
    case states.slap:
        scr_player_slap();
        break;
    case states.tacklecharge:
        scr_player_tacklecharge();
        break;
    case states.cheesepep:
        scr_player_cheesepep();
        break;
    case states.cheeseball:
        scr_player_cheeseball();
        break;
    case states.cheesepepstick:
        scr_player_cheesepepstick();
        break;
    case states.boxxedpep:
        scr_player_boxxedpep();
        break;
    case states.pistolaim:
        scr_player_pistolaim();
        break;
	// thisll be the same case 
    case states.wallclimb:
        scr_player_climbwall();
        break;
	// thisll be the same case 
    case states.climbwall:
        scr_player_climbwall();
        break;
    case states.knightpepslopes:
        scr_player_knightpepslopes();
        break;
    case states.portal:
        scr_player_portal();
        break;
    case states.secondjump:
        scr_player_secondjump();
        break;
    case states.chainsawbump:
        scr_player_chainsawbump();
        break;
    case states.handstandjump:
        scr_player_handstandjump();
        break;
    case states.gottreasure:
        scr_player_gottreasure();
        break;
    case states.knightpep:
        scr_player_knightpep();
        break;
	// unused
    case states.knightpepattack:
        scr_player_knightpepattack();
        break;
    case states.meteorpep:
        scr_player_meteorpep();
        break;
    case states.bombpep:
        scr_player_bombpep();
        break;
	// this is the hauling state, dont mix it up for states.grab
    case states.grabbing:
        scr_player_grabbing();
        break;
    case states.chainsawpogo:
        scr_player_chainsawpogo();
        break;
    case states.shotgunjump:
        scr_player_shotgunjump();
        break;
	// unused i think
    case states.stunned:
        scr_player_stunned();
        break;
	// unused
    case states.highjump:
        scr_player_highjump();
        break;
	// unused
    case states.chainsaw:
        scr_player_chainsaw();
        break;
	// unused
    case states.facestomp:
        scr_player_facestomp();
        break;
    case states.timesup:
        scr_player_timesup();
        break;
    case states.machroll:
        scr_player_machroll();
        break;
    case states.pistol:
        scr_player_pistol();
        break;
    case states.shotgun:
        scr_player_shotgun();
        break;
    case states.machfreefall:
        scr_player_machfreefall();
        break;
    case states.throw:
        scr_player_throw();
        break;
    case states.superslam:
        scr_player_superslam();
        break;
	// unused i think
    case states.slam:
        scr_player_slam();
        break;
	// unused
    case states.skateboard:
        scr_player_skateboard();
        break;
    case states.grind:
        scr_player_grind();
        break;
    case states.grab:
        scr_player_grab();
        break;
	// unused i think
    case states.punch:
        scr_player_punch();
        break;
	// unused
    case states.backkick:
        scr_player_backkick();
        break;
	// unused
    case states.uppunch:
        scr_player_uppunch();
        break;
	// shoulderBASH state for peppino
    case states.shoulder:
        scr_player_shoulder();
        break;
	// another duplicate state for ease of coding
    case states.backbreaker:
        scr_player_backbreaker();
        break;
	// another duplicate state for ease of coding
    case states.taunt:
        scr_player_backbreaker();
        break;
	// unused i think
    case states.bossdefeat:
        scr_player_bossdefeat();
        break;
    case states.bossintro:
        scr_player_bossintro();
        break;
	// unused i think
    case states.smirk:
        scr_player_smirk();
        break;
	// unused i think
    case states.pizzathrow:
        scr_player_pizzathrow();
        break;
	// unused i think
    case states.gameover:
        scr_player_gameover();
        break;
    case states.Sjumpland:
        scr_player_Sjumpland();
        break;
	// unused i think
    case states.freefallprep:
        scr_player_freefallprep();
        break;
	// unused i think
    case states.runonball:
        scr_player_runonball();
        break;
	// unused i think
    case states.boulder:
        scr_player_boulder();
        break;
    case states.keyget:
        scr_player_keyget();
        break;
    case states.tackle:
        scr_player_tackle();
        break;
    case states.slipnslide:
        scr_player_slipnslide();
        break;
    case states.ladder:
        scr_player_ladder();
        break;
    case states.jump:
        scr_player_jump();
        break;
    case states.victory:
        scr_player_victory();
        break;
    case states.comingoutdoor:
        scr_player_comingoutdoor();
        break;
	// duplicates
    case states.Sjump:
        scr_player_Sjump();
        break;
	// duplicates
    case states.superjump:
        scr_player_Sjump();
        break;
	// duplicates
    case states.Sjumpprep:
        scr_player_Sjumpprep();
        break;
	// duplicates
    case states.superjumpprep:
        scr_player_Sjumpprep();
        break;
    case states.crouch:
        scr_player_crouch();
        break;
    case states.crouchjump:
        scr_player_crouchjump();
        break;
    case states.crouchslide:
        scr_player_crouchslide();
        break;
    case states.mach1:
        scr_player_mach1();
        break;
    case states.mach2:
        scr_player_mach2();
        break;
    case states.mach3:
        scr_player_mach3();
        break;
	// mach 3 duplicate that sends the player into mach 4
	case states.mach4: 
		movespeed = 20;
		sprite_index = spr_crazyrun;
	    scr_player_mach3();
		break;
    case states.machslide:
        scr_player_machslide();
        break;
    case states.bump:
        scr_player_bump();
        break;
    case states.hurt:
        scr_player_hurt();
        break;
    case states.freefall:
        scr_player_freefall();
        break;
    case states.freefallland:
        scr_player_freefallland();
        break;
    case states.hang:
        scr_player_hang();
        break;
    case states.door:
        scr_player_door();
        break;
    case states.barrelnormal:
        scr_player_barrelnormal();
        break;
    case states.barrelfall:
        scr_player_barrelfall();
        break;
	// dont know what enums these barrel mach states correspond to, there isnt an enum for them so
    case states.barrelmach:
        scr_player_barrelmach1();
        break;
    case states.barrelmach:
        scr_player_barrelmach2();
        break;
    case states.barrelfloat:
        scr_player_barrelfloat();
        break;
    case states.barrelcrouch:
        scr_player_barrelcrouch();
        break;
    case states.barrelslipnslide:
        scr_player_barrelslipnslide();
        break;
    case states.barrelroll:
        scr_player_barrelroll();
        break;
    case states.current:
        scr_player_current();
        break;
    case states.taxi:
        scr_player_taxi();
        break;
	// this is only used for noise
    case states.pogo:
        scr_player_pogo();
        break;
	// duplicates
    case states.rideweenie:
        scr_player_rideweenie();
        break;
	// duplicates
    case states.weeniemount:
        scr_player_rideweenie();
        break;
    case states.faceplant:
        scr_player_faceplant();
        break;
}

if (room == Realtitlescreen)
    state = states.titlescreen;
if (wallclingcooldown < 10)
    wallclingcooldown++
if (global.combo >= 3 && state != states.backbreaker)
    supercharged = 1;
if ((!instance_exists(superchargedeffectid)) && supercharged == 1)
{
    with (instance_create(x, y, obj_superchargeeffect))
    {
        playerid = other.object_index;
        other.superchargedeffectid = id;
    }
}
if ((!instance_exists(pizzashieldid)) && pizzashield == 1)
{
    with (instance_create(x, y, obj_pizzashield))
    {
        playerid = other.object_index;
        other.pizzashieldid = id;
    }
}
if (visible == false && state == states.comingoutdoor)
{
    coopdelay++
    image_index = 0;
    if (coopdelay == 50)
    {
        visible = true;
        coopdelay = 0;
    }
}
if (global.coop == 1)
{
    if ((state == states.punch || state == states.handstandjump) && (!((obj_player2.state == states.punch || obj_player2.state == states.handstandjump))))
        fightballadvantage = 1;
    else if (!((obj_player2.state == states.punch || obj_player2.state == states.handstandjump)))
        fightballadvantage = 0;
}
if (state != states.pogo && state != states.backbreaker)
{
    pogospeed = 6;
    pogospeedprev = 0;
}
// get player sounds
scr_playersounds();
if (grounded)
    doublejump = 0;
if (pogochargeactive == 1)
{
    if (flashflicker == 0)
    {
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogofall)
            sprite_index = spr_playerN_pogofallmach;
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogobounce)
            sprite_index = spr_playerN_pogobouncemach;
    }
    flashflicker = 1;
    pogocharge--
}
else
    flashflicker = 0;
if (state != states.throw)
    kickbomb = 0;
if (pogocharge == 0)
{
    pogochargeactive = 0;
    pogocharge = 100;
}
if (flashflicker == 1)
{
    flashflickertime++
    if (flashflickertime == 20)
    {
        flash = 1;
        flashflickertime = 0;
    }
}
if (global.coop == 0)
    fightball = 0;
if (state != states.mach3 && state != states.grabbed)
    fightball = 0;
if (state != states.grabbed && state != states.hurt)
    thrown = 0;
if (grounded && state != states.handstandjump)
    suplexmove = 0;
if (state != states.freefall)
    freefallsmash = 0;
if (global.playerhealth <= 0 && state != states.gameover)
{
    image_index = 0;
    sprite_index = spr_deathstart;
    state = states.gameover;
}
if (state == states.gameover && y > (room_height * 2))
{
    scr_playerreset();
    targetDoor = "A";
    room = hub_room1; // why not use room_goto()?
    if (global.coop == 1)
    {
        with (obj_player2)
        {
            targetDoor = "A";
            scr_playerreset();
        }
    }
}
// could not find the proper object for the asset indice "149" will try to find it later
if (baddiegrabbedID == 149 && (state == states.grab || state == states.superslam || state == states.tacklecharge))
    state = states.normal;
if (!((state == states.grab || state == states.superslam || state == states.mach2)))
{
    baddiegrabbedID = 149;
    heavy = 0;
}
if (grinding)
    state = states.grind;
if (anger <= 0)
    angry = 0;
if (anger > 0)
{
    angry = 1;
    anger -= 1;
}
if (sprite_index == spr_winding && state != states.normal)
    windingAnim = 0;
if (state != states.grab)
    swingdingbuffer = 0;
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit);
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2;
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == states.normal)
    instance_create(x, y, obj_sweat);
if (angry == 1 && (!instance_exists(angryeffectid)) && state == states.normal)
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index;
        other.angryeffectid = id;
    }
}
if (global.combotime > 0)
    global.combotime -= 0.5;
if (global.combotime == 0 && global.combo != 0)
{
    if (global.combo >= 5)
        scr_soundeffect(sfx_thatsprettygood);
    global.combo = 0;
}
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect);
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1;
if (state == states.crouchslide || state == states.punch || state == states.mach2 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || state == states.tacklecharge || state == states.skateboard || state == states.knightpep || state == states.boxxedpep || state == states.cheesepep || state == states.knightpepslopes || state == states.knightpepattack || state == states.bombpep || state == states.facestomp || state == states.machfreefall || state == states.facestomp || state == states.machroll || state == states.mach3 || state == states.freefall || state == states.Sjump)
    attacking = 1;
else
    attacking = 0;
if (state == states.throw || state == states.punch || state == states.backkick || state == states.shoulder || state == states.uppunch)
    grabbing = 1;
else
    grabbing = 0;
if (state == states.crouchslide || state == states.faceplant || state == states.rideweenie || state == states.mach3 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || state == states.slipnslide || (state == states.hurt && thrown == 1) || state == states.mach2 || state == states.climbwall || state == states.freefall || state == states.tumble || state == states.fireass || state == states.firemouth || state == (9 << 0) || state == states.skateboard || state == (37 << 0) || state == states.Sjump || state == states.machroll || state == states.machfreefall || state == states.tacklecharge || (state == states.superslam && sprite_index == spr_piledriver) || state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.boxxedpep || state == states.cheesepep || state == states.cheeseball)
    instakillmove = 1;
else
    instakillmove = 0;
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed);
if (state != states.mach3 && state != states.machslide)
    autodash = 0;
if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
    fallinganimation = 0;
if (state != states.freefallland && state != states.normal && state != states.machslide)
    facehurt = 0;
if (state != states.normal && state != states.machslide)
    machslideAnim = 0;
if (state != states.normal)
{
    idle = 0;
    dashdust = 0;
}
if (state != states.mach1 && state != states.jump && state != (9 << 0) && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes)
    momemtum = 0;
if (state != states.Sjump && state != states.Sjumpprep)
    a = 0;
if (state != states.facestomp)
    facestompAnim = 0;
if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
    superslam = 0;
if (state != states.mach2)
    machpunchAnim = 0;
if (state != states.jump)
    ladderbuffer = 0;
if (state != states.jump)
    stompAnim = 0;
if ((state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.mach2 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == states.climbwall || state == (9 << 0) || state == states.machroll || state == states.tacklecharge || state == states.handstandjump || state == states.machslide) && macheffect == 0)
{
    macheffect = 1;
    toomuchalarm1 = 6;
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index;
        image_index = (other.image_index - 1);
        image_xscale = other.xscale;
        sprite_index = other.sprite_index;
    }
}
if (!((state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.mach2 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == states.climbwall || state == (9 << 0) || state == states.machroll || state == states.tacklecharge || state == states.handstandjump || state == states.machslide)))
    macheffect = 0;
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1;
    if (toomuchalarm1 <= 0 && (state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.climbwall || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == (9 << 0) || state == states.mach2 || state == states.tacklecharge || state == states.machslide || state == states.machroll || state == states.handstandjump || (state == states.chainsaw && mach2 >= 100)))
    {
        with (instance_create(x, y, obj_mach3effect))
        {
            playerid = other.object_index;
            image_index = (other.image_index - 1);
            image_xscale = other.xscale;
            sprite_index = other.sprite_index;
        }
        toomuchalarm1 = 6;
    }
}
if (y < (-(room_height / 2))) // set this to if (y < -800) if this causes bugs
{
    x = roomstartx;
    y = -500;
    state = states.freefall;
    vsp = 10;
}
if (character == "S")
{
    if (state == states.crouchjump || state == states.crouch)
        state = states.normal;
}
if (!(place_meeting(x, y, obj_solid)))
{
    if (state != states.bump && sprite_index != spr_bombpepintro && sprite_index != spr_knightpepthunder && state != states.tumble && state != states.stunned && state != states.fireass && state != states.crouch && state != states.boxxedpep && state != states.pistol && sprite_index != spr_player_crouchshoot && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump)
        mask_index = spr_player_mask;
    else
        mask_index = spr_crouchmask;
}
else if place_meeting(x, y, obj_solid)
    mask_index = spr_crouchmask;
if (character == "S" && state == states.bombpep)
    mask_index = spr_player_mask;
else if (character == "S")
    mask_index = spr_crouchmask;
if (state == states.gottreasure || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == states.keyget || state == states.door || state == states.ejected || state == states.victory || state == states.comingoutdoor || state == states.gameover)
    cutscene = 1;
else
    cutscene = 0;
if (((place_meeting(x, y, obj_door) && (!(place_meeting(x, y, obj_doorblocked)))) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == states.normal && obj_player1.spotlight == 1)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index;
}
if (state == states.mach2 && (!instance_exists(speedlineseffectid)))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index;
        other.speedlineseffectid = id;
    }
}
// scr_collide_destructibles()
scr_collide_destructibles();
if (state != states.titlescreen && state != states.grabbed && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover)
   // collide the player
   scr_collide_player();
if (state == states.boulder)
   // collide the player
   scr_collide_player();
