if keyboard_check(button_target_key) {
	   button_hold_timer += delta_time / 1000000;
	if button_hold_timer > button_hold_time {
		room_goto(button_target_location);
	};
} else { button_hold_timer = 0; };