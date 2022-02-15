///trgGravity(type/gravity, [direction])
//Makes an object fall by setting its gravity.
//Arguments:
//1. gravity - amount of acceleration.
//2. [direction] - degrees. (270 by default)

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            grav = 0;
            gravDir = 270;
            break;
            
        case "exclusive":
            return true;
            
        case "isUsed":
            return (grav != 0);
            
        case "init":
            gravity = grav;
            gravity_direction = gravDir;
            break;
    }
}
else
{
    if (argument_count >= 1) { grav = argument[0]; }
    if (argument_count >= 2) { gravDir = argument[1]; }
}
