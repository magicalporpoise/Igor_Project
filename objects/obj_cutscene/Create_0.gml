/// @description  The cutscene object prevents player input and pans the camera

// change the followee
setting = room;
follow_object = obj_npc;

// make the player unable to move
obj_player.state = states.cutscene;

// variables for scene control
scene_finished = false;
activate_scene = false;
//room_set_view(setting, 1, true, 0, 0, 600, 400, 0, 0, 1200, 800, 300, 200, 10, 10, follow_object);

