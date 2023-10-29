scr_getinput2()
switch state
{
    case states.normal:
        scr_player_normal()
        break
    case (113 << 0):
        scr_player_grabbed()
        break
    case (3 << 0):
        scr_player_finishingblow()
        break
    case (2 << 0):
        scr_player_tumble()
        break
    case (8 << 0):
        scr_player_titlescreen()
        break
    case (4 << 0):
        scr_player_ejected()
        break
    case (7 << 0):
        scr_player_firemouth()
        break
    case (6 << 0):
        scr_player_fireass()
        break
    case (5 << 0):
        scr_player_transitioncutscene()
        break
    case (9 << 0):
        scr_playerN_hookshot()
        break
    case (12 << 0):
        scr_player_slap()
        break
    case (10 << 0):
        scr_player_tacklecharge()
        break
    case (13 << 0):
        scr_player_cheesepep()
        break
    case (11 << 0):
        scr_player_cheeseball()
        break
    case (14 << 0):
        scr_player_cheesepepstick()
        break
    case (16 << 0):
        scr_player_boxxedpep()
        break
    case (17 << 0):
        scr_player_pistolaim()
        break
    case (18 << 0):
        scr_player_climbwall()
        break
    case (19 << 0):
        scr_player_knightpepslopes()
        break
    case (20 << 0):
        scr_player_portal()
        break
    case (21 << 0):
        scr_player_secondjump()
        break
    case (22 << 0):
        scr_player_chainsawbump()
        break
    case (23 << 0):
        scr_player_handstandjump()
        break
    case (24 << 0):
        scr_player_gottreasure()
        break
    case (25 << 0):
        scr_player_knightpep()
        break
    case (26 << 0):
        scr_player_knightpepattack()
        break
    case (27 << 0):
        scr_player_meteorpep()
        break
    case (28 << 0):
        scr_player_bombpep()
        break
    case (29 << 0):
        scr_player_grabbing()
        break
    case (30 << 0):
        scr_player_chainsawpogo()
        break
    case (31 << 0):
        scr_player_shotgunjump()
        break
    case (33 << 0):
        scr_player_stunned()
        break
    case (34 << 0):
        scr_player_highjump()
        break
    case (35 << 0):
        scr_player_chainsaw()
        break
    case (36 << 0):
        scr_player_facestomp()
        break
    case (38 << 0):
        scr_player_timesup()
        break
    case (39 << 0):
        scr_player_machroll()
        break
    case (41 << 0):
        scr_player_pistol()
        break
    case (40 << 0):
        scr_player_shotgun()
        break
    case (42 << 0):
        scr_player_machfreefall()
        break
    case (43 << 0):
        scr_player_throw()
        break
    case (45 << 0):
        scr_player_superslam()
        break
    case (44 << 0):
        scr_player_slam()
        break
    case (46 << 0):
        scr_player_skateboard()
        break
    case (47 << 0):
        scr_player_grind()
        break
    case (48 << 0):
        scr_player_grab()
        break
    case (49 << 0):
        scr_player_punch()
        break
    case (50 << 0):
        scr_player_backkick()
        break
    case (51 << 0):
        scr_player_uppunch()
        break
    case (52 << 0):
        scr_player_shoulder()
        break
    case (53 << 0):
        scr_player_backbreaker()
        break
    case (54 << 0):
        scr_player_bossdefeat()
        break
    case (56 << 0):
        scr_player_bossintro()
        break
    case (64 << 0):
        scr_player_smirk()
        break
    case (55 << 0):
        scr_player_pizzathrow()
        break
    case (57 << 0):
        scr_player_gameover()
        break
    case (95 << 0):
        scr_player_Sjumpland()
        break
    case (94 << 0):
        scr_player_freefallprep()
        break
    case (92 << 0):
        scr_player_runonball()
        break
    case (90 << 0):
        scr_player_boulder()
        break
    case (58 << 0):
        scr_player_keyget()
        break
    case (59 << 0):
        scr_player_tackle()
        break
    case (62 << 0):
        scr_player_slipnslide()
        break
    case (61 << 0):
        scr_player_ladder()
        break
    case (60 << 0):
        scr_player_jump()
        break
    case (66 << 0):
        scr_player_victory()
        break
    case (63 << 0):
        scr_player_comingoutdoor()
        break
    case (65 << 0):
        scr_player_Sjump()
        break
    case (67 << 0):
        scr_player_Sjumpprep()
        break
    case (68 << 0):
        scr_player_crouch()
        break
    case (69 << 0):
        scr_player_crouchjump()
        break
    case (70 << 0):
        scr_player_crouchslide()
        break
    case (71 << 0):
        scr_player_mach1()
        break
    case (72 << 0):
        scr_player_mach2()
        break
    case (93 << 0):
        scr_player_mach3()
        break
    case (73 << 0):
        scr_player_machslide()
        break
    case (74 << 0):
        scr_player_bump()
        break
    case (75 << 0):
        scr_player_hurt()
        break
    case (76 << 0):
        scr_player_freefall()
        break
    case (79 << 0):
        scr_player_freefallland()
        break
    case (77 << 0):
        scr_player_hang()
        break
    case (80 << 0):
        scr_player_door()
        break
    case (86 << 0):
        scr_player_barrelnormal()
        break
    case (85 << 0):
        scr_player_barrelfall()
        break
    case (84 << 0):
        scr_player_barrelmach1()
        break
    case (83 << 0):
        scr_player_barrelmach2()
        break
    case (82 << 0):
        scr_player_barrelfloat()
        break
    case (81 << 0):
        scr_player_barrelcrouch()
        break
    case (87 << 0):
        scr_player_barrelslipnslide()
        break
    case (88 << 0):
        scr_player_barrelroll()
        break
    case (89 << 0):
        scr_player_current()
        break
    case (91 << 0):
        scr_player_taxi()
        break
    case (32 << 0):
        scr_player_pogo()
        break
    case (15 << 0):
        scr_player_rideweenie()
        break
    case (96 << 0):
        scr_player_faceplant()
        break
}

if (global.combo >= 3 && state != states.backbreaker && global.coop == 1)
    supercharged = 1
if ((!instance_exists(superchargedeffectid)) && supercharged == 1)
{
    with (instance_create(x, y, obj_superchargeeffect))
    {
        playerid = other.object_index
        other.superchargedeffectid = id
    }
}
if ((!instance_exists(pizzashieldid)) && pizzashield == 1)
{
    with (instance_create(x, y, obj_pizzashield))
    {
        playerid = other.object_index
        other.pizzashieldid = id
    }
}
if (global.coop == 1)
{
    if ((state == states.punch || state == states.handstandjump) && (!((obj_player1.state == states.punch || obj_player1.state == states.handstandjump))))
        fightballadvantage = 1
    else if (!((obj_player1.state == states.punch || obj_player1.state == states.handstandjump)))
        fightballadvantage = 0
}
if (state != states.grabbed && state != states.hurt)
    thrown = 0
if (visible == false && state == states.comingoutdoor)
{
    coopdelay++
    image_index = 0
    if (coopdelay == 50)
    {
        visible = true
        coopdelay = 0
    }
}
if (wallclingcooldown < 10)
    wallclingcooldown++
if (state != states.pogo && state != states.pogo)
{
    pogospeed = 6
    pogospeedprev = 0
}
scr_playersounds()
if grounded
    doublejump = 0
if (pogochargeactive == 1)
{
    if (flashflicker == 0)
    {
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogofall)
            sprite_index = spr_playerN_pogofallmach
        if (pogochargeactive == 1 && sprite_index == spr_playerN_pogobounce)
            sprite_index = spr_playerN_pogobouncemach
    }
    flashflicker = 1
    pogocharge--
}
else
    flashflicker = 0
if (state != states.throw)
    kickbomb = 0
if (pogocharge == 0)
{
    pogochargeactive = 0
    pogocharge = 100
}
if (flashflicker == 1)
{
    flashflickertime++
    if (flashflickertime == 20)
    {
        flash = 1
        flashflickertime = 0
    }
}
if (global.coop == 0)
    fightball = 0
if (state != states.mach3 && state != states.grabbed)
    fightball = 0
if (global.coop == 0 && key_jump2 && room != rank_room && room != Realtitlescreen && obj_player1.cutscene == 0 && (!instance_exists(obj_fadeout)) && (!instance_exists(obj_endlevelfade)))
{
    image_blend = make_colour_hsv(0, 0, 255)
    alarm[5] = 2
    alarm[7] = 60
    hurted = 1
    x = obj_player1.x
    y = obj_player1.y
    state = states.normal
    global.coop = 1
    instance_create(x, y, obj_cooppointer)
    instance_create(x, y, obj_coopflag)
}
if (key_start && global.coop == 1 && fightball == 0 && obj_player1.state != states.mach3 && obj_player1.state != states.grabbed)
{
    with (instance_create(x, y, obj_dashcloud))
        sprite_index = spr_bombexplosion
    scr_changetoppings()
    repeat (6)
        instance_create(x, y, obj_baddiegibs)
    global.coop = 0
    instance_destroy(obj_cooppointer)
    instance_destroy(obj_coopflag)
    obj_player1.spotlight = 1
    obj_player1.depth = -7
    scr_soundeffect(sfx_explosion)
    with (obj_player1)
    {
        if (state == states.grab || state == states.superslam || state == states.tacklecharge)
            state = states.normal
    }
    scr_changetoppings()
}
if (global.coop == 0)
{
    obj_player1.spotlight = 1
    x = -1000
    y = 500
    state = states.titlescreen
    if instance_exists(obj_coopflag)
        instance_destroy(obj_coopflag)
    if instance_exists(obj_cooppointer)
        instance_destroy(obj_cooppointer)
}
scr_playersounds()
if (grounded && state != states.handstandjump)
    suplexmove = 0
if (state != states.freefall)
    freefallsmash = 0
if (global.playerhealth <= 0 && state != states.gameover)
{
    image_index = 0
    sprite_index = spr_deathstart
    state = states.gameover
}
if (state == states.gameover && y > (room_height * 2))
{
    scr_playerreset()
    targetDoor = "A"
    room = hub_room1
    if (global.coop == 1)
    {
        with (obj_player1)
        {
            targetDoor = "A"
            scr_playerreset()
        }
    }
}
if ((!instance_exists(baddiegrabbedID)) && (state == states.grab || state == states.superslam || state == states.tacklecharge))
    state = states.normal
if (!((state == states.grab || state == states.superslam || state == states.mach2)))
{
    baddiegrabbedID = 0
    heavy = 0
}
if grinding
    state = states.grind
if (anger == 0)
    angry = 0
if (anger > 0)
{
    angry = 1
    anger -= 1
}
if (sprite_index == spr_winding && state != states.normal)
    windingAnim = 0
if (state != states.grab)
    swingdingbuffer = 0
if (sprite_index == spr_player_idlevomit && image_index > 28 && image_index < 43)
    instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit)
if (sprite_index == spr_player_idlevomitblood && image_index > 28 && image_index < 43)
{
    with (instance_create((x + random_range(-5, obj_pause)), (y + 46), obj_vomit))
        sprite_index = spr_vomit2
}
if (global.playerhealth == 1 && (!instance_exists(obj_sweat)) && obj_player.state == states.normal)
    instance_create(x, y, obj_sweat)
if (angry == 1 && (!instance_exists(angryeffectid)) && state == states.normal)
{
    with (instance_create(x, y, obj_angrycloud))
    {
        playerid = other.object_index
        other.angryeffectid = id
    }
}
if (global.combotime == 0 && global.combo != 0)
    global.combo = 0
if (input_buffer_jump < 8)
    input_buffer_jump++
if (input_buffer_secondjump < 8)
    input_buffer_secondjump++
if (input_buffer_highjump < 8)
    input_buffer_highjump++
if (key_particles == 1)
    instance_create(random_range((x + 25), (x - 25)), random_range((y + 35), (y - 25)), obj_keyeffect)
if (inv_frames == 0 && hurted == 0)
    image_alpha = 1
if (state == states.mach2 || state == states.tacklecharge || state == states.skateboard || state == states.knightpep || state == states.boxxedpep || state == states.cheesepep || state == states.knightpepslopes || state == states.knightpepattack || state == states.bombpep || state == states.facestomp || state == states.machfreefall || state == states.facestomp || state == states.machroll || state == states.mach3 || state == states.freefall || state == states.Sjump)
    attacking = 1
else
    attacking = 0
if (state == states.throw || state == states.punch || state == states.backkick || state == states.shoulder || state == states.uppunch)
    grabbing = 1
else
    grabbing = 0
if (state == states.crouchslide || state == states.faceplant || state == states.rideweenie || state == states.mach3 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || state == states.slipnslide || (state == states.hurt && thrown == 1) || state == states.mach2 || state == states.climbwall || state == states.freefall || state == states.tumble || state == states.fireass || state == states.firemouth || state == (9 << 0) || state == states.skateboard || state == (37 << 0) || state == states.Sjump || state == states.machroll || state == states.machfreefall || state == states.tacklecharge || (state == states.superslam && sprite_index == spr_piledriver) || state == states.knightpep || state == states.knightpepattack || state == states.knightpepslopes || state == states.boxxedpep || state == states.cheesepep || state == states.cheeseball)
    instakillmove = 1
else
    instakillmove = 0
if (flash == 1 && alarm[0] <= 0)
    alarm[0] = (0.15 * room_speed)
if (state != states.mach3 && state != states.machslide)
    autodash = 0
if ((state != states.jump && state != states.crouchjump && state != states.slap) || vsp < 0)
    fallinganimation = 0
if (state != states.freefallland && state != states.normal && state != states.machslide)
    facehurt = 0
if (state != states.normal && state != states.machslide)
    machslideAnim = 0
if (state != states.normal)
{
    idle = 0
    dashdust = 0
}
if (state != states.mach1 && state != states.jump && state != (9 << 0) && state != states.handstandjump && state != states.normal && state != states.mach2 && state != states.mach3 && state != states.freefallprep && state != states.knightpep && state != states.shotgun && state != states.knightpepslopes)
    momemtum = 0
if (state != states.Sjump && state != states.Sjumpprep)
    a = 0
if (state != states.facestomp)
    facestompAnim = 0
if (state != states.freefall && state != states.facestomp && state != states.superslam && state != states.freefallland)
    superslam = 0
if (state != states.mach2)
    machpunchAnim = 0
if (state != states.jump)
    ladderbuffer = 0
if (state != states.jump)
    stompAnim = 0
if ((state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.mach2 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == states.climbwall || state == (9 << 0) || state == states.machroll || state == states.tacklecharge || state == states.handstandjump || state == states.machslide) && macheffect == 0)
{
    macheffect = 1
    toomuchalarm1 = 6
    with (instance_create(x, y, obj_mach3effect))
    {
        playerid = other.object_index
        image_index = (other.image_index - 1)
        image_xscale = other.xscale
        sprite_index = other.sprite_index
    }
}
if (!((state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.mach2 || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == states.climbwall || state == (9 << 0) || state == states.machroll || state == states.tacklecharge || state == states.handstandjump || state == states.machslide)))
    macheffect = 0
if (toomuchalarm1 > 0)
{
    toomuchalarm1 -= 1
    if (toomuchalarm1 <= 0 && (state == states.mach3 || (state == states.grabbed && instance_exists(obj_player2) && obj_player2.state == states.mach3) || state == states.crouchslide || pizzapepper > 0 || state == states.rideweenie || state == states.punch || state == states.climbwall || (state == states.jump && sprite_index == spr_playerN_noisebombspinjump) || pogochargeactive == 1 || state == (9 << 0) || state == states.mach2 || state == states.tacklecharge || state == states.machslide || state == states.machroll || state == states.handstandjump || (state == states.chainsaw && mach2 >= 100)))
    {
        with (instance_create(x, y, obj_mach3effect))
        {
            playerid = other.object_index
            image_index = (other.image_index - 1)
            image_xscale = other.xscale
            sprite_index = other.sprite_index
        }
        toomuchalarm1 = 6
    }
}
if (y < -800)
{
    x = roomstartx
    y = -500
    state = states.freefall
    vsp = 10
}
if (character == "S")
{
    if (state == states.crouchjump || state == states.crouch)
        state = states.normal
}
if (!(place_meeting(x, y, obj_solid)))
{
    if (state != states.bump && sprite_index != spr_bombpepintro && state != states.stunned && sprite_index != spr_knightpepthunder && state != states.tumble && state != states.fireass && state != states.crouch && state != states.boxxedpep && state != states.pistol && sprite_index != spr_player_crouchshoot && state != states.Sjumpprep && state != states.chainsaw && state != states.machroll && state != states.hurt && state != states.crouchslide && state != states.crouchjump)
        mask_index = spr_player_mask
    else
        mask_index = spr_crouchmask
}
else if place_meeting(x, y, obj_solid)
    mask_index = spr_crouchmask
if (character == "S" && state == states.bombpep)
    mask_index = spr_player_mask
else if (character == "S")
    mask_index = spr_crouchmask
if (state == states.gottreasure || sprite_index == spr_knightpepstart || sprite_index == spr_knightpepthunder || state == states.keyget || state == states.door || state == states.ejected || state == states.victory || state == states.comingoutdoor || state == states.gameover)
    cutscene = 1
else
    cutscene = 0
if ((place_meeting(x, y, obj_door) || place_meeting(x, y, obj_dresser) || place_meeting(x, y, obj_snick) || place_meeting(x, y, obj_keydoor) || (place_meeting(x, y, obj_exitgate) && global.panic == 1)) && (!instance_exists(obj_uparrow)) && scr_solid(x, (y + 1)) && state == states.normal && obj_player1.spotlight == 0)
{
    with (instance_create(x, y, obj_uparrow))
        playerid = other.object_index
}
if (state == states.mach2 && (!instance_exists(speedlineseffectid)))
{
    with (instance_create(x, y, obj_speedlines))
    {
        playerid = other.object_index
        other.speedlineseffectid = id
    }
}
scr_collide_destructibles()
if (state != states.titlescreen && state != states.grabbed && state != states.door && state != states.Sjump && state != states.ejected && state != states.comingoutdoor && state != states.boulder && state != states.keyget && state != states.victory && state != states.portal && state != states.timesup && state != states.gottreasure && state != states.gameover)
    scr_collide_player()
if (state == states.boulder)
    scr_collide_player()
