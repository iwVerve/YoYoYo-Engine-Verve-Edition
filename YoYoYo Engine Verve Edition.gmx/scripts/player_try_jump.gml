///player_try_jump()

if (!place_free(x, y + global.grav) || onPlatform || place_meeting(x, y, objWater) || place_meeting(x, y, objPlatform))
{
    player_ground_jump();
}
else if (airJumps > 0 || place_meeting(x, y + global.grav, objWater2) || global.infJump || global.debugInfJump)
{
    player_air_jump();
}
