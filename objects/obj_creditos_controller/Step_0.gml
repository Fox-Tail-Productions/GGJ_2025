show_debug_message(creditos_pos);

var xscale = 0.3;
var yscale = 0.3;

var alpha_channel = animcurve_get_channel(animcurve_get(curve_game_pop), "pop");
var         alpha = animcurve_channel_evaluate(alpha_channel, frac(creditos_pos / 10));

if creditos_lenght <= creditos_pos {
	switch creditos_sprite_idx {
		case 0:
			creditos_sprite  = spr_creditos_1;
			creditos_pos     = 0.0;
			creditos_sprite_idx += 1;
		break
		case 1:
			creditos_sprite  = spr_creditos_2;
			creditos_pos     = 0.0;
			creditos_sprite_idx += 1;
		break
		case 2:
			creditos_sprite  = spr_creditos_3;
			creditos_pos     = 0.0;
			creditos_sprite_idx += 1;
		break;
		case 3:
			creditos_sprite      = spr_creditos_4;
			creditos_pos         = 0.0;
			creditos_sprite_idx += 1;
		break
		case 4:
			creditos_sprite  = spr_creditos_5;
			creditos_pos     = 0.0;
			creditos_sprite_idx += 1;
		break
		default:
			creditos_sprite = spr_creditos_personas;
					  alpha = 1.0;
					 xscale = 0.3;
					 yscale = 0.3;
	};
} else { creditos_pos += delta_time / 1000000; };

sprite_index = creditos_sprite;
image_xscale = xscale;
image_yscale = yscale;
image_alpha  = alpha ;