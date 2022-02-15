///trgFade(type/type, [time], [easing])
//Makes an object fade either in or out when triggered. If an object is set to fade in, it will have no collision mask before it does.
//Arguments:
//1. type - "in" or "out".
//2. [time] - duration of the fade in frames. 30 by default.
//3, [easing] - "none" (default), "in", "out", or "inout". Modifies the fade to either speed up, slow down, or both.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            fadeType = "none"; //"in" or "out"
            fadeTime = 30;
            fadeEase = "none"; //"in", "out" or "inout"
            
            fadeT = 0;
            mask = 0;
            targetAlpha = 0;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            if (fadeType == "in")
            {
                mask = inst.mask_index;
                
                inst.mask_index = sprEmpty;
                targetAlpha = inst.image_alpha;
                inst.image_alpha = 0;
            }
            
            return (fadeType != "none");
            
        case "init":
            if (fadeType == "out")
            {
                targetAlpha = inst.image_alpha;
            }
            if (fadeType == "in")
            {
                inst.mask_index = mask;
            }
            break;
            
        case "step":
            fadeT++;
            var f = clamp(fadeT / fadeTime, 0, 1);
            f = scrEaseValue(f, fadeEase);
            
            if (fadeType == "out")
            {
                f = 1 - f;
                if (f <= 0)
                {
                    instance_destroy(inst);
                    instance_destroy();
                    exit;
                }
            }
            image_alpha = targetAlpha * f;
            break;
    }
}
else
{
    if (argument_count >= 1) { fadeType = argument[0]; }
    if (argument_count >= 2) { fadeTime = argument[1]; }
    if (argument_count >= 3) { fadeEase = argument[2]; }
}
