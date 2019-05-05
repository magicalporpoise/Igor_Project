/// @description drawing the backpack to screen
x = obj_player.x - (30 * hdim) - 30;
y = obj_player.y - (10*vdim);

//draw the gridspace for the backpack
if(global.inventoryvisible){
    if(!instance_exists(obj_selector)) instance_create(x, y, obj_selector);
    with(obj_selector){
        x = other.x + (30*selectx);
        y = other.y + (30*selecty);
    }
    for(var i = 0; i < hdim; i++){
        for(var j = 0; j < vdim; j++){
            if(global.backpack[i, j] == -1) draw_sprite(spr_bpgrid, 0, x + (30*i), y + (30*j));
            else{ //draw the green box AND the item within that slot
                draw_sprite(spr_bpgrid, 1, x + (30*i), y + (30*j));
                draw_sprite(global.backpack[i, j].sprite_index, 0, x + (30*i), y + (30*j));
            }
        }
    }
} else {
    with(obj_selector){instance_destroy();}
}

