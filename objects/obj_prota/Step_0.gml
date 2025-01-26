// Game: Arrow Key Sprite Changer
sprite_index = spr_prota_idle;
var direction_pointing = 0;

// Direcciones
if keyboard_check(vk_down) {
	sprite_index = spr_prota_ouch_17;
	direction_pointing = 1;
} else if keyboard_check(vk_up) {
	sprite_index = spr_prota_up;
	direction_pointing = 2;
} else if keyboard_check(vk_left) {
	sprite_index = spr_prota_left;
	direction_pointing = 3;
} else if keyboard_check(vk_right) {
	sprite_index = spr_prota_right;
	direction_pointing = 4;
};

// Al salir, suena sonido de burbuja y la ventana explota como burbuja
if game_end_triggered == 0 { game_end(0); } else
if game_end_triggered > 0 {
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop        = animcurve_channel_evaluate(pop_channel, pop_at);
	window_set_size(start_windowWidth * tpop, start_windowHeight * tpop);
	game_end_triggered -= 1;
}; if keyboard_check(vk_escape) and game_end_triggered < 1 {
	game_end_triggered = 10;
	audio_play_sound(sound_pop, 10, false);
};

// 
