/// @description The backpack used by Igor
//the grid dimensions
hdim = 1;
vdim = 4;

//creating an empty backpack
for(var i = 0; i < hdim; i++){
    for(var j = 0; j < vdim; j++){
        global.backpack[i, j] = -1;
    }
}

global.inventoryvisible = false;

