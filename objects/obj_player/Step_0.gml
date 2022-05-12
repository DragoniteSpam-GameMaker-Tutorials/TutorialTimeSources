self.x = mouse_x;
self.y = mouse_y;

if (self.can_shoot && mouse_check_button(mb_left)) {
    self.can_shoot = false;
    
    time_source_start(self.timer);
    
    instance_create_depth(self.x, self.y, self.depth + 1, obj_bullet, {
        xspeed: random_range(-2, 2),
        yspeed: -8,
    });
}