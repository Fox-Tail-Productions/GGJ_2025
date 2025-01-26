if event_data[? "event_type"] == "sprite event" {
if event_data[? "message"]    == "pop_end"      {
	instance_destroy() };
}