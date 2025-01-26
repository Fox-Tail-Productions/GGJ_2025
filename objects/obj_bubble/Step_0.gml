// BUBBLE STEP
if bubble_type == "rojo" {
	bubble_sprite_contact   = spr_bubble_pop2_red;
	bubble_sprite_idle      = spr_bubble_idle_red;
	bubble_sprite_pop       = spr_bubble_pop_red ;
} else if bubble_type == "azul" {
	bubble_sprite_contact = spr_bubble_pop2_blue;
	bubble_sprite_idle    = spr_bubble_idle_blue;
	bubble_sprite_pop     = spr_bubble_pop_blue ;
} 

if bubble_pop == 0 {
	audio_play_sound(sound_pop, 10, false);
	instance_destroy();
} else if bubble_pop > 0 {
	sprite_index = bubble_sprite_pop;
	pop_at += 0.1;
	var pop_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
	var tpop = animcurve_channel_evaluate(pop_channel, pop_at);
	window_set_size(start_windowWidth * tpop, start_windowHeight * tpop);
	bubble_pop -= 1;
};
if bubble_triggered and bubble_pop < 1 { bubble_pop = 10; };

// Bubble path system
// bubble_path
// bubble_pos
// bubble_vulnerable