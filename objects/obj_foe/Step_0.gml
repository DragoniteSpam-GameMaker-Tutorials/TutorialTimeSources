if (self.can_shoot) {
    self.can_shoot = false;
    self.alarm[0] = 60;
    
    instance_create_depth(self.x, self.y, self.depth + 1, obj_bullet, {
        xspeed: 4 * cos(current_time / 2000),
        yspeed: -4 * sin(current_time / 2000),
    });
}