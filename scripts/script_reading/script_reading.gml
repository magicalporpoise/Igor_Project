/// @description when a text box comes up, switch the player state to this.
script_getInput();

//slow down if already moving
    if(hsp != 0) hsp -= sign(hsp);
    if(abs(hsp) < 1) hsp = 0;
    if(place_meeting(x, y, obj_climb)) vsp = 0;

if(key_space){
    with(obj_text) {instance_destroy();}
    state = states.normal;
}

script_moveandcollide();
sprite_index = spr_player_idle;
