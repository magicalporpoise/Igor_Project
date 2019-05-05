/// @description  Make the machine make the noise

if(global.weather and global.flipped){ // if the parts are all fixed and the switch is flipped
    if(!fixed){
        fixed = true; // flag var is raised
        audio_play_sound(s_machine_is_on, 4, false);       
        alarm[0] = 100; // to activate the cutscene
    }
}

