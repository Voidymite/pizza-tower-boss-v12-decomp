if (image_index == 1 && global.panic == 0)
{
    with (obj_player)
    {
        if (state == states.comingoutdoor && floor(image_index) == (image_number - 2))
        {
            scr_soundeffect(sfx_groundpound)
            with (obj_player1)
            {
                sprite_index = spr_Timesup
                image_index = 0
                with (obj_camera)
                {
                    shake_mag = 10
                    shake_mag_acc = (30 / room_speed)
                }
            }
            if (global.coop == 1)
            {
                with (obj_player2)
                {
                    sprite_index = spr_Timesup
                    image_index = 0
                    with (obj_camera)
                    {
                        shake_mag = 10
                        shake_mag_acc = (30 / room_speed)
                    }
                }
            }
            other.image_index = 0
            ds_list_add(global.saveroom, other.id)
        }
    }
}
with (obj_player)
{
    if (grounded && x > (other.x - 160) && x < (other.x + 160) && key_up && (state == states.normal || state == states.mach1 || state == states.mach2 || state == states.mach3) && (global.panic == 1 || global.snickchallenge == 1))
    {
        if (global.timeattack == 1)
            obj_timeattack.stop = 1
        targetDoor = "none"
        obj_camera.alarm[2] = -1
        if ((global.collect + global.collectN) >= global.srank)
        {
            global.rank = "s"
            if (global.snickchallenge == 1)
                global.SAGEsnicksrank = 1
        }
        else if ((global.collect + global.collectN) > global.arank)
            global.rank = "a"
        else if ((global.collect + global.collectN) > global.brank)
            global.rank = "b"
        else if ((global.collect + global.collectN) > global.crank)
            global.rank = "c"
        else
            global.rank = "d"
        if (global.rank == "s")
            scr_soundeffect(mu_ranks)
        if (global.rank == "a")
            scr_soundeffect(mu_ranka)
        if (global.rank == "b")
            scr_soundeffect(mu_rankc)
        if (global.rank == "c")
            scr_soundeffect(mu_rankc)
        if (global.rank == "d")
            scr_soundeffect(mu_rankd)
        audio_stop_sound(mu_pizzatime)
        audio_stop_sound(mu_noiseescape)
        audio_stop_sound(mu_dragonlair)
        audio_stop_sound(mu_snickchallenge)
        audio_stop_sound(mu_snickchallengeend)
        ini_open("saveData.ini")
        var roomname = room_get_name(room)
        if (string_letters(roomname) == "entrance")
        {
            ini_open("saveData.ini")
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect)
            if (global.entrancehighscore < global.collect)
                ini_write_string("Highscore", "entrance", global.collect)
            if (global.entrancetoppin1 != 1)
                ini_write_string("Toppin", "entrance1", global.shroomfollow)
            if (global.entrancetoppin2 != 1)
                ini_write_string("Toppin", "entrance2", global.cheesefollow)
            if (global.entrancetoppin3 != 1)
                ini_write_string("Toppin", "entrance3", global.tomatofollow)
            if (global.entrancetoppin4 != 1)
                ini_write_string("Toppin", "entrance4", global.sausagefollow)
            if (global.entrancetoppin5 != 1)
                ini_write_string("Toppin", "entrance5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "entrance", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "entrance", "none"))
                    ini_write_string("Ranks", "entrance", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none"))
                    ini_write_string("Ranks", "entrance", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none"))
                    ini_write_string("Ranks", "entrance", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "entrance", "none") && "a" != ini_read_string("Ranks", "entrance", "none") && "b" != ini_read_string("Ranks", "entrance", "none") && "c" != ini_read_string("Ranks", "entrance", "none"))
                    ini_write_string("Ranks", "entrance", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "entrance", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "entrance", "none"))
                    ini_write_string("Time", "entrance", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "entrance", "none") && "a" != ini_read_string("Time", "entrance", "none"))
                    ini_write_string("Time", "entrance", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "entrance", "none") && "a" != ini_read_string("Time", "entrance", "none") && "b" != ini_read_string("Time", "entrance", "none"))
                    ini_write_string("Time", "entrance", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "entrance", "none") && "a" != ini_read_string("Time", "entrance", "none") && "b" != ini_read_string("Time", "entrance", "none") && "c" != ini_read_string("Time", "entrance", "none"))
                    ini_write_string("Time", "entrance", global.rank)
            }
        }
        if (string_letters(roomname) == "medieval")
        {
            ini_open("saveData.ini")
            if (global.SAGEknighttaken == 0)
            {
                global.SAGEknight = 1
                global.SAGEknight = ini_write_string("SAGE2019", "knight", 1)
            }
            if (global.secretfound > global.medievalsecret)
                ini_write_string("Secret", "medieval", global.secretfound)
            if (global.medievaltreasure == 0)
                ini_write_string("Treasure", "medieval", global.treasure)
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect)
            if (global.medievalhighscore < global.collect)
                ini_write_string("Highscore", "medieval", global.collect)
            if (global.medievaltoppin1 != 1)
                ini_write_string("Toppin", "medieval1", global.shroomfollow)
            if (global.medievaltoppin2 != 1)
                ini_write_string("Toppin", "medieval2", global.cheesefollow)
            if (global.medievaltoppin3 != 1)
                ini_write_string("Toppin", "medieval3", global.tomatofollow)
            if (global.medievaltoppin4 != 1)
                ini_write_string("Toppin", "medieval4", global.sausagefollow)
            if (global.medievaltoppin5 != 1)
                ini_write_string("Toppin", "medieval5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "medieval", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "medieval", "none"))
                    ini_write_string("Ranks", "medieval", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none"))
                    ini_write_string("Ranks", "medieval", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none"))
                    ini_write_string("Ranks", "medieval", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "medieval", "none") && "a" != ini_read_string("Ranks", "medieval", "none") && "b" != ini_read_string("Ranks", "medieval", "none") && "c" != ini_read_string("Ranks", "medieval", "none"))
                    ini_write_string("Ranks", "medieval", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "medieval", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "medieval", "none"))
                    ini_write_string("Time", "medieval", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "medieval", "none") && "a" != ini_read_string("Time", "medieval", "none"))
                    ini_write_string("Time", "medieval", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "medieval", "none") && "a" != ini_read_string("Time", "medieval", "none") && "b" != ini_read_string("Time", "medieval", "none"))
                    ini_write_string("Time", "medieval", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "medieval", "none") && "a" != ini_read_string("Time", "medieval", "none") && "b" != ini_read_string("Time", "medieval", "none") && "c" != ini_read_string("Time", "medieval", "none"))
                    ini_write_string("Time", "medieval", global.rank)
            }
        }
        if (string_letters(roomname) == "chateau")
        {
            ini_open("saveData.ini")
            if (global.secretfound > global.chateausecret)
                ini_write_string("Secret", "chateau", global.secretfound)
            if (global.chateautreasure == 0)
                ini_write_string("Treasure", "chateau", global.treasure)
            if (global.chateauhighscore < global.collect)
                ini_write_string("Highscore", "chateau", global.collect)
            if (global.chateauhighscore < global.collect)
                ini_write_string("Highscore", "chateau", global.collect)
            if (global.chateautoppin1 != 1)
                ini_write_string("Toppin", "chateau1", global.shroomfollow)
            if (global.chateautoppin2 != 1)
                ini_write_string("Toppin", "chateau2", global.cheesefollow)
            if (global.chateautoppin3 != 1)
                ini_write_string("Toppin", "chateau3", global.tomatofollow)
            if (global.chateautoppin4 != 1)
                ini_write_string("Toppin", "chateau4", global.sausagefollow)
            if (global.chateautoppin5 != 1)
                ini_write_string("Toppin", "chateau5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "chateau", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "chateau", "none"))
                    ini_write_string("Ranks", "chateau", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "chateau", "none") && "a" != ini_read_string("Ranks", "chateau", "none"))
                    ini_write_string("Ranks", "chateau", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "chateau", "none") && "a" != ini_read_string("Ranks", "chateau", "none") && "b" != ini_read_string("Ranks", "chateau", "none"))
                    ini_write_string("Ranks", "chateau", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "chateau", "none") && "a" != ini_read_string("Ranks", "chateau", "none") && "b" != ini_read_string("Ranks", "chateau", "none") && "c" != ini_read_string("Ranks", "chateau", "none"))
                    ini_write_string("Ranks", "chateau", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "chateau", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "chateau", "none"))
                    ini_write_string("Time", "chateau", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "chateau", "none") && "a" != ini_read_string("Time", "chateau", "none"))
                    ini_write_string("Time", "chateau", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "chateau", "none") && "a" != ini_read_string("Time", "chateau", "none") && "b" != ini_read_string("Time", "chateau", "none"))
                    ini_write_string("Time", "chateau", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "chateau", "none") && "a" != ini_read_string("Time", "chateau", "none") && "b" != ini_read_string("Time", "chateau", "none") && "c" != ini_read_string("Time", "chateau", "none"))
                    ini_write_string("Time", "chateau", global.rank)
            }
        }
        if (string_letters(roomname) == "ruin")
        {
            ini_open("saveData.ini")
            if (global.secretfound > global.ruinsecret)
                ini_write_string("Secret", "ruin", global.secretfound)
            if (global.ruintreasure == 0)
                ini_write_string("Treasure", "ruin", global.treasure)
            if (global.ruinhighscore < global.collect)
                ini_write_string("Highscore", "ruin", global.collect)
            if (global.ruinhighscore < global.collect)
                ini_write_string("Highscore", "ruin", global.collect)
            if (global.ruintoppin1 != 1)
                ini_write_string("Toppin", "ruin1", global.shroomfollow)
            if (global.ruintoppin2 != 1)
                ini_write_string("Toppin", "ruin2", global.cheesefollow)
            if (global.ruintoppin3 != 1)
                ini_write_string("Toppin", "ruin3", global.tomatofollow)
            if (global.ruintoppin4 != 1)
                ini_write_string("Toppin", "ruin4", global.sausagefollow)
            if (global.ruintoppin5 != 1)
                ini_write_string("Toppin", "ruin5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "ruin", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "ruin", "none"))
                    ini_write_string("Ranks", "ruin", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none"))
                    ini_write_string("Ranks", "ruin", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none") && "b" != ini_read_string("Ranks", "ruin", "none"))
                    ini_write_string("Ranks", "ruin", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "ruin", "none") && "a" != ini_read_string("Ranks", "ruin", "none") && "b" != ini_read_string("Ranks", "ruin", "none") && "c" != ini_read_string("Ranks", "ruin", "none"))
                    ini_write_string("Ranks", "ruin", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "ruin", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "ruin", "none"))
                    ini_write_string("Time", "ruin", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "ruin", "none") && "a" != ini_read_string("Time", "ruin", "none"))
                    ini_write_string("Time", "ruin", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "ruin", "none") && "a" != ini_read_string("Time", "ruin", "none") && "b" != ini_read_string("Time", "ruin", "none"))
                    ini_write_string("Time", "ruin", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "ruin", "none") && "a" != ini_read_string("Time", "ruin", "none") && "b" != ini_read_string("Time", "ruin", "none") && "c" != ini_read_string("Time", "ruin", "none"))
                    ini_write_string("Time", "ruin", global.rank)
            }
        }
        if (string_letters(roomname) == "dungeon")
        {
            ini_open("saveData.ini")
            if (obj_player.backupweapon == 1)
            {
                ini_write_string("SAGE2019", "dungeonbackup", 1)
                global.SAGEdungeonbackup = 1
            }
            if (global.secretfound > global.dungeonsecret)
                ini_write_string("Secret", "dungeon", global.secretfound)
            if (global.dungeontreasure == 0)
                ini_write_string("Treasure", "dungeon", global.treasure)
            if (global.dungeonhighscore < global.collect)
                ini_write_string("Highscore", "dungeon", global.collect)
            if (global.dungeontoppin1 != 1)
                ini_write_string("Toppin", "dungeon1", global.shroomfollow)
            if (global.dungeontoppin2 != 1)
                ini_write_string("Toppin", "dungeon2", global.cheesefollow)
            if (global.dungeontoppin3 != 1)
                ini_write_string("Toppin", "dungeon3", global.tomatofollow)
            if (global.dungeontoppin4 != 1)
                ini_write_string("Toppin", "dungeon4", global.sausagefollow)
            if (global.dungeontoppin5 != 1)
                ini_write_string("Toppin", "dungeon5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "dungeon", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "dungeon", "none"))
                    ini_write_string("Ranks", "dungeon", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none"))
                    ini_write_string("Ranks", "dungeon", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none") && "b" != ini_read_string("Ranks", "dungeon", "none"))
                    ini_write_string("Ranks", "dungeon", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "dungeon", "none") && "a" != ini_read_string("Ranks", "dungeon", "none") && "b" != ini_read_string("Ranks", "dungeon", "none") && "c" != ini_read_string("Ranks", "dungeon", "none"))
                    ini_write_string("Ranks", "dungeon", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "dungeon", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "dungeon", "none"))
                    ini_write_string("Time", "dungeon", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "dungeon", "none") && "a" != ini_read_string("Time", "dungeon", "none"))
                    ini_write_string("Time", "dungeon", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "dungeon", "none") && "a" != ini_read_string("Time", "dungeon", "none") && "b" != ini_read_string("Time", "dungeon", "none"))
                    ini_write_string("Time", "dungeon", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "dungeon", "none") && "a" != ini_read_string("Time", "dungeon", "none") && "b" != ini_read_string("Time", "dungeon", "none") && "c" != ini_read_string("Time", "dungeon", "none"))
                    ini_write_string("Time", "dungeon", global.rank)
            }
        }
        if (string_letters(roomname) == "dragonlair")
        {
            ini_open("saveData.ini")
            if (global.dragonlairhighscore < global.collect)
                ini_write_string("Highscore", "dragonlair", global.collect)
            if (global.rank == "s")
                ini_write_string("Ranks", "dragonlair", global.rank)
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "dragonlair", "none"))
                ini_write_string("Ranks", "dragonlair", global.rank)
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "dragonlair", "none") && "a" != ini_read_string("Ranks", "dragonlair", "none"))
                ini_write_string("Ranks", "dragonlair", global.rank)
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "dragonlair", "none") && "a" != ini_read_string("Ranks", "dragonlair", "none") && "b" != ini_read_string("Ranks", "dragonlair", "none"))
                ini_write_string("Ranks", "dragonlair", global.rank)
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "dragonlair", "none") && "a" != ini_read_string("Ranks", "dragonlair", "none") && "b" != ini_read_string("Ranks", "dragonlair", "none") && "c" != ini_read_string("Ranks", "dragonlair", "none"))
                ini_write_string("Ranks", "dragonlair", global.rank)
        }
        if (room == strongcold_escape)
        {
            ini_open("saveData.ini")
            if (global.secretfound > global.strongcoldsecret)
                ini_write_string("Secret", "strongcold", global.secretfound)
            if (global.strongcoldtreasure == 0)
                ini_write_string("Treasure", "strongcold", global.treasure)
            if (global.strongcoldhighscore < global.collect && global.timeattack == 0)
                ini_write_string("Highscore", "strongcold", global.collect)
            if (global.strongcoldtoppin1 != 1)
                ini_write_string("Toppin", "strongcold1", global.shroomfollow)
            if (global.strongcoldtoppin2 != 1)
                ini_write_string("Toppin", "strongcold2", global.cheesefollow)
            if (global.strongcoldtoppin3 != 1)
                ini_write_string("Toppin", "strongcold3", global.tomatofollow)
            if (global.strongcoldtoppin4 != 1)
                ini_write_string("Toppin", "strongcold4", global.sausagefollow)
            if (global.strongcoldtoppin5 != 1)
                ini_write_string("Toppin", "strongcold5", global.pineapplefollow)
            if (global.timeattack == 0)
            {
                if (global.rank == "s")
                    ini_write_string("Ranks", "strongcold", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Ranks", "strongcold", "none"))
                    ini_write_string("Ranks", "strongcold", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Ranks", "strongcold", "none") && "a" != ini_read_string("Ranks", "strongcold", "none"))
                    ini_write_string("Ranks", "strongcold", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Ranks", "strongcold", "none") && "a" != ini_read_string("Ranks", "strongcold", "none") && "b" != ini_read_string("Ranks", "strongcold", "none"))
                    ini_write_string("Ranks", "strongcold", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Ranks", "strongcold", "none") && "a" != ini_read_string("Ranks", "strongcold", "none") && "b" != ini_read_string("Ranks", "strongcold", "none") && "c" != ini_read_string("Ranks", "strongcold", "none"))
                    ini_write_string("Ranks", "strongcold", global.rank)
            }
            if (global.timeattack == 1)
            {
                if (global.rank == "s")
                    ini_write_string("Time", "strongcold", global.rank)
                if (global.rank == "a" && "s" != ini_read_string("Time", "strongcold", "none"))
                    ini_write_string("Time", "strongcold", global.rank)
                if (global.rank == "b" && "s" != ini_read_string("Time", "strongcold", "none") && "a" != ini_read_string("Time", "strongcold", "none"))
                    ini_write_string("Time", "strongcold", global.rank)
                if (global.rank == "c" && "s" != ini_read_string("Time", "strongcold", "none") && "a" != ini_read_string("Time", "strongcold", "none") && "b" != ini_read_string("Time", "strongcold", "none"))
                    ini_write_string("Time", "strongcold", global.rank)
                if (global.rank == "d" && "s" != ini_read_string("Time", "strongcold", "none") && "a" != ini_read_string("Time", "strongcold", "none") && "b" != ini_read_string("Time", "strongcold", "none") && "c" != ini_read_string("Time", "strongcold", "none"))
                    ini_write_string("Time", "strongcold", global.rank)
            }
        }
        if (string_letters(roomname) == "snickchallengeend")
        {
            ini_open("saveData.ini")
            if (global.SAGEshotgunsnicknumber >= 6)
            {
                global.SAGEshotgunsnick = 1
                ini_write_string("SAGE2019", "shotgunsnick", 1)
            }
            if (global.snickchallengehighscore < global.collect)
                ini_write_string("Highscore", "snickchallenge", global.collect)
            if (global.snickchallengehighscore < global.collect)
                ini_write_string("Highscore", "snickchallenge", global.collect)
            if (global.rank == "s")
                ini_write_string("Ranks", "snickchallenge", global.rank)
            if (global.rank == "a" && "s" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank)
            if (global.rank == "b" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank)
            if (global.rank == "c" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none") && "b" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank)
            if (global.rank == "d" && "s" != ini_read_string("Ranks", "snickchallenge", "none") && "a" != ini_read_string("Ranks", "snickchallenge", "none") && "b" != ini_read_string("Ranks", "snickchallenge", "none") && "c" != ini_read_string("Ranks", "snickchallenge", "none"))
                ini_write_string("Ranks", "snickchallenge", global.rank)
            ini_close()
        }
        ini_close()
        if (!instance_exists(obj_endlevelfade))
            instance_create(x, y, obj_endlevelfade)
        obj_player1.state = states.door
        obj_player1.sprite_index = obj_player1.spr_lookdoor
        if instance_exists(obj_player2)
        {
            obj_player2.state = states.door
            obj_player2.sprite_index = obj_player2.spr_lookdoor
        }
        obj_endlevelfade.alarm[0] = 235
        image_index = 0
        global.panic = 0
        global.snickchallenge = 0
    }
}
