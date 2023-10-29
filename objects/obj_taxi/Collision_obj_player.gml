if ((obj_player1.state != states.taxi || obj_player2.state != states.taxi) && sprite_index == spr_taxiidle)
{
    obj_player1.visible = false
    obj_player1.sprite_index = obj_player1.spr_idle
    obj_player1.hsp = 0
    obj_player1.vsp = 0
    obj_player1.state = states.taxi
    scr_soundeffect(sfx_taxi2)
    playerid = 3
    sprite_index = spr_taximove
    hsp = 10
    obj_player1.cutscene = 1
    if (global.coop == 1)
    {
        obj_player2.sprite_index = obj_player2.spr_idle
        scr_soundeffect(sfx_taxi2)
        playerid = 4
        sprite_index = spr_taximove
        hsp = 10
        obj_player2.visible = false
        obj_player2.hsp = 0
        obj_player2.vsp = 0
        obj_player2.state = states.taxi
        obj_player2.cutscene = 1
    }
}
