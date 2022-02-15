///trgMove(type/hspeed, vspeed)
//Sets an object's h/vspeeds when triggered.
//Arguments:
//1. hspeed
//2. vspeed

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            h = 0;
            v = 0;
            break;
            
        case "exclusive":
            return true;
        
        case "isUsed":
            return (h != 0 || v != 0);
            
        case "init":
            hspeed = h;
            vspeed = v;
            break;
    }
}
else
{
    if (argument_count >= 1) { h = argument[0]; }
    if (argument_count >= 2) { v = argument[1]; }
}
