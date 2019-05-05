/// @description  Brewing stands take potions, mix them, and spit out a new potion

event_inherited();

keysneeded = 2;
key = obj_potion;
action = 0;

image_speed = 0;
image_index = 0;

// these will represent the potions supplied by the player
slot1 = -1;
slot2 = -1;

brewing = false; // is it currently brewing

hsp=0;

