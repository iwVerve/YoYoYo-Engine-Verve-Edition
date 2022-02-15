///scrPlayerJump()

if (!place_free(x, y + global.grav) || onPlatform || place_meeting(x, y, objWater) || place_meeting(x, y, objPlatform))
{
    vspeed = -jumpSpeed;
    djump = 1;
    audio_play_sound(sndJump, 0, false);
}
else if (djump == 1 || place_meeting(x, y + global.grav, objWater2) || global.infJump || global.debugInfJump)
{
    vspeed = -djumpSpeed;
    sprite_index = sprPlayerJump;
    audio_play_sound(sndDJump, 0, false);
    
    if (!place_meeting(x, y + global.grav, objWater3))
        { djump = 0; }
    else
        { djump = 1; }
}
