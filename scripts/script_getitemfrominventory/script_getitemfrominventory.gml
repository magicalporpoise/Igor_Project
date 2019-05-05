var i = obj_selector.selectx;
var j = obj_selector.selecty;
if(global.backpack[i, j] != -1){
    with(obj_player) {
        //current item set to invisible
        if(itemheld != -1) itemheld.visible = false;
        itemheld = global.backpack[i, j];
    }
    global.inventoryvisible = false;
    state = states.normal;
}
