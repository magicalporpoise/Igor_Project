/// @description Movement and collision
//gravity
if(!place_meeting(x, y+1, obj_walkable)) vsp++;

//horizontal collision
if(place_meeting(x+hsp, y, obj_collide)){
    //var currenthsp = hsp;
    while(!place_meeting(x+sign(hsp), y, obj_collide)){
        x+=sign(hsp);
        //currenthsp -=sign(hsp);        
    }
    //if(currenthsp != hsp) audio_play_sound(sound_hit, 5, false);
    hsp = 0;
}
//update the character x
x+=hsp;

//vertical collision
if(place_meeting(x, y+vsp, obj_collide)){
    //var currentvsp = vsp;
    while(!place_meeting(x, y+sign(vsp), obj_collide)){ 
        y+=sign(vsp);
        //currentvsp -=sign(vsp);
    }
    //if(currentvsp != vsp) audio_play_sound(sound_hit, 5, false);
    vsp = 0;
}
//update the character y
y+=vsp;
