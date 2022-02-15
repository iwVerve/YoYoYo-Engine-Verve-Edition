///trgMoveDir(type/dir, speed)
//Sets an object's movement defined by direction and speed.
//Arguments:
//1. direction - degrees
//2. speed

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            dir = undefined;
            break;
            
        case "exclusive":
            return true;
        
        case "isUsed":
            return (!is_undefined(dir));
            
        case "init":
            speed = spd;
            direction = dir;
            break;
    }
}
else
{
    if (argument_count >= 1) { dir = argument[0]; }
    if (argument_count >= 2) { spd = argument[1]; }
}
