///trgScript(type/script, [with], [arg0], [arg1], [arg2])
//Calls a script when triggered.
//Arguments:
//1. script
//2. [with] - which object calls the script. (id by default, meaning the objTriggerManager)
//3. [arg0] - first argument to be passed to the script. (not passed by default)
//4. [arg1]
//5. [arg2]

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            script = noone;
            scriptWith = id;
            scriptArg0 = undefined;
            scriptArg1 = undefined;
            scriptArg2 = undefined;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            return (script != noone);
            
        case "init":
            with(scriptWith)
            {
                if (!is_undefined(other.scriptArg2))
                {
                    script_execute(other.script, other.scriptArg0, other.scriptArg1, other.scriptArg2);
                }
                else if (!is_undefined(other.scriptArg1))
                {
                    script_execute(other.script, other.scriptArg0, other.scriptArg1);
                }
                else if (!is_undefined(other.scriptArg0))
                {
                    script_execute(other.script, other.scriptArg0);
                }
                else
                {
                    script_execute(other.script);
                }
            }
            break;
            
        case "step":
            break;
    }
}
else
{
    if (argument_count >= 1) { script = argument[0]; }
    if (argument_count >= 2) { scriptWith = argument[1]; }
    if (argument_count >= 3) { scriptArg0 = argument[2]; }
    if (argument_count >= 4) { scriptArg1 = argument[3]; }
    if (argument_count >= 5) { scriptArg2 = argument[4]; }
}
