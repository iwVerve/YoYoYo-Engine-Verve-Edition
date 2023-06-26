///player_ground_jump()

// Performs the ground jump - can be called directly to perform a ground jump even mid air. This will refresh air jumps.

vspeed = -jumpSpeed;
airJumps = maxAirJumps;
audio_play_sound(sndJump, 0, false);
