// Game: Arrow Key Sprite Changer
sprite_index = spr_prota_idle;

if keyboard_check(vk_down) {
	sprite_index = spr_prota_ouch_17;
} else if keyboard_check(vk_up) {
	sprite_index = spr_prota_up;
} else if keyboard_check(vk_left) {
	sprite_index = spr_prota_left;
} else if keyboard_check(vk_right) {
	sprite_index = spr_prota_right;
};

if game_end_triggered == 0 { game_end(0); } else
if game_end_triggered > 0 {
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop = animcurve_channel_evaluate(pop_channel, pop_at);
	window_set_size(start_windowWidth * tpop, start_windowHeight * tpop);
	game_end_triggered -= 1;
};

if keyboard_check(vk_escape) and game_end_triggered < 1 { game_end_triggered = 10; };