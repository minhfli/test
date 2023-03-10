#pragma once

struct sk_time {
    static unsigned int delta_tick;
    static unsigned int current_tick;

    static float delta_time;
    static float current_time;

    static const unsigned int fixed_delta_tick = 20;
    static const unsigned int fixed_delta_time = (float)fixed_delta_tick / 1000;
};
