/// @description  interact with player collision
if(activate){
    if(place_meeting(x, y, obj_player)){
        var player = instance_nearest(x, y, obj_player);
        var throw = sign(player.x - x);// which way should the player be flung
        // player on right, flung right, vice versa
        with(player){
            hsp = other.strength * throw;
            vsp = other.strength/2 * -1; // and upwards
        }
    }
}

