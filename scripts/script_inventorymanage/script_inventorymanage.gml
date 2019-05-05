/// @description manage inventory
script_getInput();
sprite_index = spr_player_idle;
if(press_right && obj_selector.selectx < obj_inventory.hdim-1){ obj_selector.selectx++; }
if(press_left && obj_selector.selectx > 0){ obj_selector.selectx--; }
if(press_down && obj_selector.selecty < obj_inventory.vdim-1){ obj_selector.selecty++; }
if(press_up && obj_selector.selecty > 0){ obj_selector.selecty--; }

//slow down if already moving
    if(hsp != 0) hsp -= sign(hsp);
    if(abs(hsp) < 1) hsp = 0;
if(place_meeting(x, y, obj_climb)) vsp = 0;


if(key_space){
    script_getitemfrominventory();
    //toggle inventory
        global.inventoryvisible = false;
        state = states.normal;
}
/*
if(key_enter){
    //toggle inventory
    global.inventoryvisible = false;
    state = states.normal;
}
*/

script_moveandcollide();
