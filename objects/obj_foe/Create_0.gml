self.timer = time_source_create(time_source_game, 1, time_source_units_seconds, function() {
    instance_create_depth(self.x, self.y, self.depth + 1, obj_bullet, {
        xspeed: 4 * cos(current_time / 2000),
        yspeed: -4 * sin(current_time / 2000),
    });
}, [], -1, time_source_expire_after);

time_source_start(self.timer);

self.another_timer = time_source_create(self.timer, 0.25, time_source_units_seconds, function() {
    instance_create_depth(self.x, self.y, self.depth + 1, obj_bullet, {
        xspeed: 0,
        yspeed: -4,
    });
}, [], -1);

time_source_start(self.another_timer);