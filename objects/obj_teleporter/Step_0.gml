/// @description  move the player

if(place_meeting(x, y, obj_player)){
    script_moveinventoryintoroom(posx, posy, true);
    room_goto(goto);
    obj_player.x = posx;
    obj_player.y = posy;
    script_moveinventoryintoroom(posx, posy, false);
}

