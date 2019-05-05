//needs to find the nearest object that exists AND is visible
var pickup = collision_in_rectangle_list(obj_player, obj_item, false, false);
var nearestitem = noone;
if(pickup != noone){
    for(var i = 0; i < ds_list_size(pickup); i++){
        if(ds_list_find_value(pickup, i).exists){
            nearestitem = ds_list_find_value(pickup, i).id;
            break;
        }
    }    
}
if(pickup!=noone)ds_list_destroy(pickup);
if(nearestitem != noone){
        //algorithm to put item into the inventory
        var placed = false;
        for(var i = 0; i < obj_inventory.hdim; i++){
            for(var j = 0; j < obj_inventory.vdim; j++){
                if(global.backpack[i, j] == -1){
                    global.backpack[i, j] = nearestitem;
                    placed = true;
                    nearestitem.slotx = i;
                    nearestitem.sloty = j;
                    obj_player.jumpheight+=2;
                    audio_play_sound(sound_hit, 5, false);
                }
                if(placed) break;
            }
            if(placed) break;
        }
    if(placed) with(nearestitem) {exists = false;}
}

return nearestitem; // return the item that has been picked up / not picked up
