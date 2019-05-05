/// @description  Check if the win conditions are met, then send the player to the correct room to win

if(global.meater >= obj_meater.meatgoal &&
   global.electricity && global.brain){
    transition_kind = 21; //fade in and out
   // send the player to the winning room
    room_goto(WIN);
}

