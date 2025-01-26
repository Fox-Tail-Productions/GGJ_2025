// BUBBLE STEP
if !bubble_init {
	switch bubble_direction {
		case vk_up:    bubble_path = path_bubbles_top_base;   break
		case vk_left:  bubble_path = path_bubbles_left_base;  break
		case vk_right: bubble_path = path_bubbles_right_base; break
	}
	path_start(bubble_path, bubble_speed, path_action_stop, true);
	bubble_init  = true;
	image_xscale = 2;
	image_yscale = 2;
}

if bubble_type == "rojo" {
	bubble_sprite_contact   = spr_bubble_pop2_red;
	bubble_sprite_idle      = spr_bubble_idle_red;
	bubble_sprite_pop       = spr_bubble_pop_red ;
} else if bubble_type == "azul" {
	bubble_sprite_contact   = spr_bubble_pop2_blue;
	bubble_sprite_idle      = spr_bubble_idle_blue;
	bubble_sprite_pop       = spr_bubble_pop_blue ;
} 

sprite_index = bubble_sprite_idle;

// Bubble path system
// bubble_path
// bubble_pos
// bubble_vulnerable