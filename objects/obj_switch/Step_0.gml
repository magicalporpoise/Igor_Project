/// @description  event inherited unless it is ==-2

if(lock == -2){
    if(on){
        global.electricity = true;
    }
} else event_inherited();

