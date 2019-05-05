/// @description the initial properties of text box
//alpha = 0; //start off invisible to fade in
print = ""; // the text going into the text
time = 0; // time passed and how much text should be in the box

//put every new box in front of the previous ones
depth = depth - instance_number(obj_text);

with(obj_player){
    state = states.reading;
}


