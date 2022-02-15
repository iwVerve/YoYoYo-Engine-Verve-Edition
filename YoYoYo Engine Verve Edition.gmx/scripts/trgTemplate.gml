///trgTemplate(type/value)
//The trigger scripts are used to both define trigger behavior and to actually set that behavior when called in creation code.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            //Runs in Create event of the objTriggerManager instance. Initialize variables to their "unused" value here.
            value = 0;
            break;
            
        case "exclusive":
            //Only one "exclusive" script can be used at a time. This should be true for any script than moves the instances and false for triggers such as sounds, scaling, etc.
            return true;
        
        case "isUsed":
            //Runs after the trigger is created. This should return true if any of the script's variables have been changed - if this script's effect is used.
            return (value != 0);
            
        case "init":
            //Runs immediately after the trigger gets triggered.
            break;
            
        case "step":
            //Runs every frame after the trigger gets triggered.
            break;
    }
}
else
{
    //This block of code gets used to allow calling the script to set the variables easily. Add one row for each variable.
    if (argument_count >= 1) { value = argument[0]; }
    //if (argument_count >= 2) { valueTwo = argument[1]; }
}
