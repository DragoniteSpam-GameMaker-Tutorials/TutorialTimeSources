self.can_shoot = true;

self.timer = time_source_create(time_source_game, 1 / 6, time_source_units_seconds, function() {
    self.can_shoot = true;
});