    with(itemheld) {
        global.backpack[slotx, sloty] = -1;
        slotx = -1;
        sloty = -1;
        exists = true;
        var dir = obj_player.image_xscale;
        hsp = dir*5 + obj_player.hsp*2; // throw the item further is running
        vsp = obj_player.vsp*1.5;
        persistent = false;
        obj_player.jumpheight-=2;
        audio_play_sound(sound_hit, 5, false);
    }
    itemheld = -1;
