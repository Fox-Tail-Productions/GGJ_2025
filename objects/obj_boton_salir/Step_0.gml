// Al salir, suena sonido de burbuja y la ventana explota como burbuja
if game_end_triggered == 0 { game_end(0); } else
if game_end_triggered > 0 {
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop        = animcurve_channel_evaluate(pop_channel, pop_at);
	window_set_size(start_windowWidth * tpop, start_windowHeight * tpop);
	game_end_triggered -= 1;
};

if keyboard_check(button_target_key) and game_end_triggered < 0 {
	button_hold_timer += delta_time / 1000000;
	if button_hold_timer > button_hold_time {
		game_end_triggered = 10;
		audio_play_sound(sound_pop, 10, false);
	}
} else { button_hold_timer = 0; };