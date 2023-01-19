///player_air_jump()

vspeed = -djumpSpeed;
sprite_index = sprPlayerJump;
audio_play_sound(sndDJump, 0, false);

if place_meeting(x, y + global.grav, objWater3) {
    airJumps = maxAirJumps;
}
else {
    airJumps -= 1;
}
