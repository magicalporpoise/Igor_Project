/// @description  if the power is on, start the scene
if(!global.electricity){
    if(global.weather){
        if(!has_played){
            has_played = true;
            alarm[0] = 100;
        }
    }
}

