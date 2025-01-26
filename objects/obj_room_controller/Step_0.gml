// ROOM CONTROLLER STEP
var bubble;
var action = 0;
var bx, by;
var b_path;

// right = 1
// left  = 2
// top   = 3

        controller_running_timer += delta_time / 1000000;
     if controller_running_timer > 13.0 { room_goto_next() }
else if controller_running_timer > 11.1 { action = 3 }
else if controller_running_timer > 10.9 { action = 1 }
else if controller_running_timer > 10.6 { action = 1 }
else if controller_running_timer > 10.3 { action = 3 }
else if controller_running_timer > 9.9  { action = 3 }
else if controller_running_timer > 9.5  { action = 1 }
else if controller_running_timer > 9.3  { action = 2 }
else if controller_running_timer > 9.3  { action = 2 }
else if controller_running_timer > 9.1  { action = 2 }
else if controller_running_timer > 8.5  { action = 3 }
else if controller_running_timer > 8.5  { action = 1 }
else if controller_running_timer > 8.1  { action = 2 }
else if controller_running_timer > 7.9  { action = 2 }
else if controller_running_timer > 7.7  { action = 3 }
else if controller_running_timer > 7.6  { action = 1 }
else if controller_running_timer > 7.3  { action = 1 }
else if controller_running_timer > 7.0  { action = 2 }
else if controller_running_timer > 6.8  { action = 2 }
else if controller_running_timer > 6.8  { action = 1 }
else if controller_running_timer > 6.5  { action = 2 }
else if controller_running_timer > 6.3  { action = 2 }
else if controller_running_timer > 6.0  { action = 3 }
else if controller_running_timer > 6.0  { action = 2 }
else if controller_running_timer > 5.7  { action = 2 }
else if controller_running_timer > 5.4  { action = 1 }
else if controller_running_timer > 5.1  { action = 3 }
else if controller_running_timer > 4.8  { action = 2 }
else if controller_running_timer > 4.6  { action = 2 }
else if controller_running_timer > 4.4  { action = 1 }
else if controller_running_timer > 4.2  { action = 3 }
else if controller_running_timer > 3.9  { action = 2 }
else if controller_running_timer > 3.7  { action = 2 }
else if controller_running_timer > 3.5  { action = 3 }
else if controller_running_timer > 3.4  { action = 1 }
else if controller_running_timer > 3.2  { action = 2 }
else if controller_running_timer > 3.1  { action = 2 }
else if controller_running_timer > 2.9  { action = 1 }
else if controller_running_timer > 2.7  { action = 3 }
else if controller_running_timer > 2.7  { action = 2 }
else if controller_running_timer > 2.4  { action = 2 }
else if controller_running_timer > 1.8  { action = 3 }
else if controller_running_timer > 1.7  { action = 2 }
else if controller_running_timer > 1.7  { action = 1 }
else if controller_running_timer > 1.5  { action = 2 }
else if controller_running_timer > 0.6  { action = 1 }


if action != 0 {
	switch action {
		case 1:
			bx = controller_right_x;
			by = controller_right_y;
			b_path = path_bubbles_right_base;
		break
		case 2:
			bx = controller_right_x;
			by = controller_right_y;
			b_path = path_bubbles_left_base;
		break
		case 3:
			bx = controller_right_x;
			by = controller_right_y;
			b_path = path_bubbles_top_base;
		break
	};
	bubble = instance_create_layer(bx, by, layer, obj_bubble);
	bubble.bubble_type = "rojo";
	bubble.bubble_path = b_path;
	bubble.image_xscale = 2;
	bubble.image_yscale = 2;
}