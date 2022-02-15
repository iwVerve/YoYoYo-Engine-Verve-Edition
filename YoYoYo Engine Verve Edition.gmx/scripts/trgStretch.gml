///trgStretch(type/x scale, y scale, [time], [easing])
//Smoothly changes an objects scale when triggered.
//Arguments:
//1. x scale
//2. y scale
//3. [time] - duration of the stretch in frames. 20 by default.
//4, [easing] - "none" (default), "in", "out", or "inout". Modifies the stretching to either speed up, slow down, or both.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            xscale = undefined;
            yscale = undefined;
            scaleTime = 20;
            scaleEase = "none"; //"in", "out" or "inout"
            
            scaleT = 0;
            xscalestart = 0;
            yscalestart = 0;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            return (!is_undefined(xscale) || !is_undefined(yscale));
            
        case "init":
            xscalestart = image_xscale;
            yscalestart = image_yscale;
            break;
            
        case "step":
            scaleT++;
            var f = clamp(scaleT / scaleTime, 0, 1);
            f = scrEaseValue(f, scaleEase);
            if (!is_undefined(xscale))
            {
                image_xscale = lerp(xscalestart, xscale, f);
            }
            if (!is_undefined(yscale))
            {
                image_yscale = lerp(yscalestart, yscale, f);
            }
            break;
    }
}
else
{
    if (argument_count >= 1) { xscale = argument[0]; }
    if (argument_count >= 2) { yscale = argument[1]; }
    if (argument_count >= 3) { scaleTime = argument[2]; }
    if (argument_count >= 4) { scaleEase = argument[3]; }
}
