/// @description Switching between states
switch(state){
    case states.normal: script_normalmovement(); break;
    //case states.stairs: script_stairmovement(); break;
    case states.inventory: script_inventorymanage(); break;
    case states.reading: script_reading(); break;
    default: script_moveandcollide(); break;
}

