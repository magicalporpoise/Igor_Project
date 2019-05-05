/// @description  Go back allow the player to move

strike = false;
global.electricity = true;
obj_player.state = states.normal
obj_player.visible = true;

room_goto(weathermachine);

obj_player.x = savex;
obj_player.y = savey;

