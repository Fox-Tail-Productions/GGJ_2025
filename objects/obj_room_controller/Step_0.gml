// ROOM CONTROLLER STEP
var bubble;
var action = 0;
var bx, by;
var b_dir;

// right = 1
// left  = 2
// top   = 3

              controller_running_timer  += delta_time * controller_difficulty / 500000;
     if       controller_running_timer  >= (130 + 1) { controller_running_timer = 0; controller_difficulty += 0.4; room_goto_next() }
else if floor(controller_running_timer) == (111 + 1) { controller_running_timer += 1; action = 3 }
//else if floor(controller_running_timer) == (109 + 1) { controller_running_timer += 1; action = 1 }
else if floor(controller_running_timer) == (106 + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (103 + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (99  + 1) { controller_running_timer += 1; action = 3 }
//else if floor(controller_running_timer) == (95  + 1) { controller_running_timer += 1; action = 1 }
else if floor(controller_running_timer) == (93  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (93  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (91  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (85  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (85  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (81  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (79  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (77  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (76  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (73  + 1) { controller_running_timer += 1; action = 1 }
else if floor(controller_running_timer) == (70  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (68  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (68  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (65  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (63  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (60  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (60  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (57  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (54  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (51  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (48  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (46  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (44  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (42  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (39  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (37  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (35  + 1) { controller_running_timer += 1; action = 3 }
//else if floor(controller_running_timer) == (34  + 1) { controller_running_timer += 1; action = 1 }
else if floor(controller_running_timer) == (32  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (31  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (29  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (27  + 1) { controller_running_timer += 1; action = 3 }
else if floor(controller_running_timer) == (27  + 1) { controller_running_timer += 1; action = 2 }
//else if floor(controller_running_timer) == (24  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (18  + 1) { controller_running_timer += 1; action = 3 }
//else if floor(controller_running_timer) == (17  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (17  + 1) { controller_running_timer += 1; action = 1 }
//else if floor(controller_running_timer) == (15  + 1) { controller_running_timer += 1; action = 2 }
else if floor(controller_running_timer) == (06  + 1) { controller_running_timer += 1; action = 1 }


if action != 0 {
	switch action {
		case 1:
			bx    = controller_right_x;
			by    = controller_right_y;
			b_dir = vk_right;
		break
		case 2:
			bx    = controller_right_x;
			by    = controller_right_y;
			b_dir = vk_left;
		break
		case 3:
			bx    = controller_right_x;
			by    = controller_right_y;
			b_dir = vk_up;
		break
	};
	bubble = instance_create_layer(bx, by, layer, obj_bubble);
	bubble.bubble_type      = "rojo";
	bubble.bubble_direction = b_dir;
}