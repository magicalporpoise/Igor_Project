/// @description  Create the weather machine part
// These parts are initially damaged but get fixed
// via the wrench

// make sure it starts off
image_speed = 0; // do not animate
image_index = 0;

// variables for activating the weather machine
i_am_fixed = false; // is it fixed or nah?
global.parts_fixed = 0;

part_type = 1; // what sprite to use

