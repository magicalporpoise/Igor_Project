/// @description take the player's existing inventory and move it into a new room
//script_moveinventoryintoroom(x, y, persist)
//finished      are you done moving everything into the room?

var px = argument0;
var py = argument1;
var persist = argument2;

for(var i = 0; i < obj_inventory.hdim; i++){
    for(var j = 0; j < obj_inventory.vdim; j++){
        if(global.backpack[i, j] != -1){
            with(global.backpack[i, j]){
                x = px;
                y = py;
                if(persist)persistent = false;
                else persistent = true;
            }
        }
    }
}
