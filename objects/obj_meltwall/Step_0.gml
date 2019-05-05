/// @description Check if the potion is here

var potion;
if(place_meeting(x+1, y, obj_potion) || place_meeting(x-1, y, obj_potion) || place_meeting(x, y-1, obj_potion)){
    potion = instance_nearest(x, y, obj_potion);
    instance_create(potion.x, potion.y, obj_boom);
    if(potion.color == self.color){
        audio_play_sound(s_bottlebreak, 3, false);
        with(potion) instance_destroy();
        instance_destroy();
    }
}

