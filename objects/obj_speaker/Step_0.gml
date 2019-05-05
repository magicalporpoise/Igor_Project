/// @description  make the speaker speak
if(action>0 && !speaking){
    text = script_text(words, urgency, font);
    speaking = true;
}
if(!instance_exists(obj_text)){
    speaking = false;
    action = 0;
}

