///scrFlipGrav()
//Flips the current gravity

global.grav = -global.grav;

//Flip the player
with (objPlayer)
{
    djump = 1;
    vspeed = 0;
    
    jumpSpeed = abs(jumpSpeed) * global.grav;
    djumpSpeed = abs(djumpSpeed) * global.grav;
    gravity = abs(gravity) * global.grav;
    
    scrSetPlayerMask();
    
    y += 4 * global.grav;
}
