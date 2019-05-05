/// @description Creating the player variables
//create globals
enum states {
    normal,
    inventory,
    reading,
    cutscene
}
global.meater = 0;
global.brain = false;
global.concrete = false;
global.electricity = false;
global.weather = false;

hsp = 0; // the speed the player is moving
vsp = 0;
hm = 0; // whether or not to move
vm = 0;
dir = 1; //1 for right, -1 for left, 0 for whichever was last
itemheld = -1;
state = states.normal;
jumpheight = -15;

myinvent = instance_create(x, y, obj_inventory);

