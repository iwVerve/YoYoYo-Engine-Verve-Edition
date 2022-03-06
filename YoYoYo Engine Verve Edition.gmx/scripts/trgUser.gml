///trgUser(type/[event], [with])
//Runs a user event of a given instance. This is useful if you don't want to define all the logic in the trigger script,
//instead giving you an easy "escape" to a much less constrained environment. Could be used for elaborate, one of a kind traps.
//Arguments:
//1. event - index of the user event, 0 (default) - 11.
//2. with - which object's or instance's user event to perform. (by default the triggered instance)

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            userEvent = -1;
            userWith = noone;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
        
            return (userEvent != -1);
            
        case "init":
            var i = scrTernary(userWith == noone, inst, userWith);
            with(i)
            {
                event_user(other.userEvent);
            }
            break;
    }
}
else
{
    if (argument_count >= 1) { userEvent = argument[0]; }
    else { userEvent = 0; }
    if (argument_count >= 2) { userWith = argument[1]; }
}
