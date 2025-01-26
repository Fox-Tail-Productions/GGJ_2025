self.bubble_triggered = true;
if keyboard_check(bubble_direction) {
	other.trigger_hurt   = true;
	 self.bubble_contact = true;
};

var popped = instance_create_layer(x, y, layer, obj_bubble_pop);

popped.image_xscale = 2;
popped.image_yscale = 2;

if bubble_contact { popped.sprite_index = bubble_sprite_contact; }
else              { popped.sprite_index = bubble_sprite_pop;     };
instance_destroy();