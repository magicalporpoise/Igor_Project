/// @description doors are set off by triggers

action = false; //perform action?

savey = y; //the orginal y position to go back to
savex = x;

// how the slider will move
horizontal = 0;
vertical = 0;
distance = 0;
image_speed = 0;

//length of the slider
length = 2; // 2 is minimum

// make the exrta bits collidable
collision = instance_create(x, y, obj_floor);
collisionsize = 0;
collision.visible = false;

