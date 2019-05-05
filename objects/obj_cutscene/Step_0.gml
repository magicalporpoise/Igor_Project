/// @description  Activate the cutscene in another npc

if(activate_scene){
        __view_set( e__VW.Visible, 0, false );
        __view_set( e__VW.Visible, 1, true );
        //room_set_view(setting, 0, true, 0, 0, 600, 400, 0, 0, 1200, 800, 300, 200, 10, 10, follow_object);
}
if(scene_finished) instance_destroy();


