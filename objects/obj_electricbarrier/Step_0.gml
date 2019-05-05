/// @description  When lectricity is on, turn off the barriers (short-circuit)
/// @param short-circuit
event_inherited();
//if the player has activated the power, turn off
if(global.electricity) activate = false; 

