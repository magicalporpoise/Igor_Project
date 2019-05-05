/// @description  Set the player back to whatever they were doing

obj_player.state = states.normal;
global.inventoryvisible = false;
__view_set( e__VW.Visible, 1, false );
__view_set( e__VW.Visible, 0, true );

