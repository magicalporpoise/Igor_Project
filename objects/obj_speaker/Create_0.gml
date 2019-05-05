/// @description This object produces text based on triggers

action = 0; // should the object speak?
speaking = false; // is the speaker CURRENTLY speaking
font = fnt;
words = "";       // what does the speaker say?
urgency = 1;      // how fast is the speaker speaking?

text = 0; // the obj_text 
//dposition = 0;  // with more dialogue, this keeps track of which dialogue stem you are currently on

x = obj_player.x- (__view_get( e__VW.WView, 0 )/2);
y = obj_player.y- (__view_get( e__VW.HView, 0 )/2);

