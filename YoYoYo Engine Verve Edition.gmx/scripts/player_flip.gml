///player_flip([target])
// Flips the current gravity.
// Can be provided a target gravity to only flip sometimes.
// (1 = flip to normal, -1 = flip to upside down)

if argument_count == 1 && argument[0] == global.grav {
    exit;
}

global.grav = -global.grav;

//Flip the player
with (objPlayer)
{
    airJumps = maxAirJumps;
    vspeed = 0;
    
    jumpSpeed = abs(jumpSpeed) * global.grav;
    djumpSpeed = abs(djumpSpeed) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    player_set_mask();
    
    y += 4 * global.grav;
}
