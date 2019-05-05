/// @description  Take the potions, make a new one if the recipe is right
// takes brewing stand slot1 and slot2
// make any number of arbitrary potions
var mixed = false;
var c; // used for color
var newmixture;

//recipes
if((slot1.color = c_red && slot2.color = c_blue) || (slot2.color = c_red && slot1.color = c_blue)){
    mixed = true;
    with(slot1) instance_destroy();
    with(slot2) instance_destroy();
    c = c_purple;
} else if((slot1.color = c_blue && slot2.color = c_yellow) || (slot2.color = c_blue && slot1.color = c_yellow)){
    mixed = true;
    with(slot1) instance_destroy();
    with(slot2) instance_destroy();
    c = c_green;
} else if((slot1.color = c_red && slot2.color = c_yellow) || (slot2.color = c_red && slot1.color = c_yellow)){
    mixed = true;
    with(slot1) instance_destroy();
    with(slot2) instance_destroy();
    c = c_orange;
} else if((slot1.color = c_orange && slot2.color = c_yellow) || (slot2.color = c_orange && slot1.color = c_yellow)){
    mixed = true;
    with(slot1) instance_destroy();
    with(slot2) instance_destroy();
    c = "concrete";
}

// if there is no recipe, let the brewing stand spit them out
if(mixed){
    if(c == "concrete") newmixture = instance_create(x, y-40, obj_concrete);
    else newmixture = instance_create(x, y-40, obj_potion);
    with(newmixture){
        hsp -= 20;
        vsp -= 5;
        color = c;
    }
} else {
    // toss the potions out
    with(slot1){
        exists = true;
        y -= 45;
        hsp -= 15;
        vsp -= 5;
    }
    with(slot2){
        exists = true;
        y -= 45;
        hsp += 15;
        vsp -= 5;
    }
}
