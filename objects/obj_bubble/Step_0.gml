// BUBBLE STEP
if bubble_type == "rojo" {
	//bubble_sprite_contact   =
	bubble_sprite_idle      = spr_bubble_idle_red
	//bubble_sprite_pop       =
} else if bubble_type == "azul" {
	//bubble_sprite_contact
	bubble_sprite_idle = spr_bubble_idle_blue
	bubble_sprite_pop  = spr_bubble_pop_blue
} 

if bubble_pop == 0 {
	audio_play_sound(sound_pop, 10, false);
	instance_destroy();
} else if bubble_pop > 0 {
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop = animcurve_channel_evaluate(pop_channel, pop_at);
	window_set_size(start_windowWidth * tpop, start_windowHeight * tpop);
	bubble_pop -= 1;
};
if bubble_triggered and bubble_pop < 1 { bubble_pop = 10; };
