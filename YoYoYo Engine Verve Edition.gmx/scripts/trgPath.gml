///trgPath(type/index, [action], [absolute], [position])
//Sets an object to follow a path.
//Arguments:
//1. index - the path index to follow.
//2. [action] - path_action_stop(default)/continue/restart/reverse. Path action to do at the end of the path.
//3. [absolute] - true (default) if following the absolute position of the path, false if following the path relative to own position.
//4. [position] - starting position of the path, 0-1. (0 by default)

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            path = noone;
            action = path_action_stop;
            absolute = true;
            position = 0;
            break;
            
        case "exclusive":
            return true;
        
        case "isUsed":
            return (path != noone);
            
        case "init":
            path_start(path, spd, action, absolute);
            path_position = position;
            break;
    }
}
else
{
    if (argument_count >= 1) { path = argument[0]; }
    if (argument_count >= 2) { action = argument[1]; }
    if (argument_count >= 3) { absolute = argument[2]; }
    if (argument_count >= 4) { position = argument[3]; }
}
