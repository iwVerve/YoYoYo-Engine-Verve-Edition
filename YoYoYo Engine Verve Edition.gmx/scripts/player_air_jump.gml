///player_air_jump()

// Performs the air - can be called directly to perform an air jump even if the player is out of air jumps.

vspeed = -djumpSpeed;
sprite_index = sprPlayerJump;
audio_play_sound(sndDJump, 0, false);

if place_meeting(x, y + global.grav, objWater3) {
    airJumps = maxAirJumps;
}
else {
    airJumps -= 1;
    airJumps = max(airJumps, 0);
}
