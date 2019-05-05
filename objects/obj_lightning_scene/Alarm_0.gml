/// @description  Lightning strikes!
// change the background
__background_set( e__BG.Visible, 1, false );
//flash of white + noise
audio_play_sound(s_lightning_strike, 1, false);
// make the lightning bolt appear
strike = true;

alarm[1] = 50;

