/// @description  Handle the item's movement and existance
if(exists){
    visible = true;
    
    //if item is close to room edge
    if(x > room_width) {
        hsp = 0;
        x = room_width
    }
    if(x < 0) {
        hsp = 0;
        x = 0;
    }
    if(place_meeting(x, y, obj_bouncer)) hsp = 0;
    if(hsp != 0) hsp -= sign(hsp); // slow down when thrown
    if(abs(hsp) < 1) hsp = 0;      // level out
    script_moveandcollide();
    if(place_meeting(x, y, obj_climb)) vsp = 0; // stop moving up on stairs
} else if(self != obj_player.itemheld){
    visible = false;
}

