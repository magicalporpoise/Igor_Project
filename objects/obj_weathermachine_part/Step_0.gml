/// @description  The machines need to get fixed
var parts_needed = instance_number(obj_weathermachine_part); // the number of machines that need fixin;
//Colliding with the wrench
if(place_meeting(x, y, obj_wrench)){
    if(!i_am_fixed) {
        audio_play_sound(s_fixing_machine, 3, false);    
        global.parts_fixed++; //compare all the other machines, if = partsneeded, set off global variable
    }
    i_am_fixed = true; // set fixed to true
}

if(global.parts_fixed >= parts_needed){ // fixed all the parts
    global.weather = true; // turn on the storm!!
}

