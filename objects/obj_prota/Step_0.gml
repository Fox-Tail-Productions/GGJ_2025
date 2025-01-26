/// STEP PROTA
// Game: Arrow Key Sprite Changer
sprite_index = spr_prota_idle;
var direction_pointing = 0;

// Direcciones
if keyboard_check(vk_down) {
	sprite_index = spr_prota_ouch2_v3;
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
	// X = W; Y = H
	
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop        = animcurve_channel_evaluate(pop_channel, pop_at);
	
	var n_w = start_windowWidth  * tpop;
	var n_h = start_windowHeight * tpop;
	
	var d_w = start_windowWidth  - n_w;
	var d_h = start_windowHeight - n_h;
	
	var n_x = start_windowX + ( d_w / 2);
	var n_y = start_windowY + ( d_h / 2);
	
	show_debug_message("tpop: {8}, s_w: {9}, s_h: {10}, n_w: {0}, n_h: {1}, n_x: {6}, n_y: {7}, c_x: {2}, c_y: {3}, d_w: {4}, d_h: {5}", n_w, n_h, start_windowX, start_windowY, d_w, d_h, n_x, n_y, tpop, start_windowWidth, start_windowHeight);
	
	window_set_position(max(n_x, 1), max(n_y, 1));
	window_set_size    (max(n_w, 1), max(n_h, 1));
	
	game_end_triggered -= 1;
};

if ((keyboard_check(vk_escape) and game_end_triggered == -1)) {
	game_end_triggered = 10;
	audio_play_sound(sound_pop, 10, false);
};

if curr_hp < 1 {  curr_hp = max_hp; room_goto(room_menu); };