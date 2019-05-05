/// @description  Start the cutscene appear with the lightning rod room

obj_player.state = states.cutscene;
obj_player.visible = false;

room_goto(lightningrod);

