if (keyboard_check(vk_space)) {
    instance_destroy();
}

if (keyboard_check_pressed(vk_tab)) {
    time_source_pause(self.timer);
}

if (keyboard_check_pressed(vk_enter)) {
    time_source_start(self.timer);
}