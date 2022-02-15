///scrDynamicCollision(setup, [crushed script], [arg])

var setup = argument[0]; //Call this script with setup = true in Create, and setup = false in End Step
if (argument_count >= 2) var script = argument[1]; //Script to run when the instance is crushed at the end of collision
if (argument_count >= 3) var arg = argument[2]; //Argument for crush script

if (setup)
{
    xold = x;
    yold = y;
}
else
{
    //Split these into two with blocks so a user event 1 runs only after every single block's user event 0
    with(objBlockDynamic)
    {
        inst = other;
        event_user(0);
    }
    with(objBlockDynamic)
    {
        event_user(1);
    }
    
    //Check if crushed
    if (!place_free(x, y) && argument_count >= 2)
    {
        if (argument_count <= 2) script_execute(script);
        else script_execute(script, arg);
    }
    
    //Set variables for next frame
    xold = x;
    yold = y;
}
