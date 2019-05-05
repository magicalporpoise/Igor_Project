/// @description checking if the necessary item is in place
if(key != 0 && key != -1){
    script_activatetrigger();
}

if(on && !inuse){
    //make event occur
    inuse = true;
    audio_play_sound(sound_switch, 5, false);
    if(consume){
        var near = instance_nearest(x, y, key);
        with(near){instance_destroy();}
        on = true;
        inuse = false;
        if(key == obj_meat) global.meater++;
        else if(key == obj_concrete) {global.concrete = true; lock.action++;}
        else lock.action++;
    } else {
        //self.image_blend = color;
        lock.action++; // create an action variable that changes its position within creation code
    }
} else if(!on && inuse){
    audio_play_sound(sound_switch, 5, false);
    lock.action--;
    inuse = false;
    //self.image_blend = 0;
}

