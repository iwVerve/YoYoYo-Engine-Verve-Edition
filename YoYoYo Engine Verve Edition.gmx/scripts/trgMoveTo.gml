///trgMoveTo(type/x pos, y pos, speed, [easing], [relative])
//Moves an object to a specific position.
//Arguments:
//1. x pos - x coordinate if absolute movement or x distance if relative.
//2. y pos
//3. speed
//4. [easing] - "none" (default), "in", "out", "inout". Modifies the movement to either speed up, slow down, or both. The duration will still be the same, meaning eased movement will have to move faster than the defined speed.
//5. [relative] - false (default) if moving to an absolute position, e.g. x:32 y:32, true if moving a certain distance, e.g. 32px to the right and 32px down.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            xto = undefined;
            yto = undefined;
            movetoEase = "none" //"in", "out" or "inout"
            movetoRelative = false;
            
            movetoT = 0;
            moveToDuration = 0;
            break;
            
        case "exclusive":
            return true;
        
        case "isUsed":
            return (!is_undefined(xto) || !is_undefined(yto));
            
        case "init":
            if (is_undefined(xto))
            {
                xto = x;
            }
            if (is_undefined(xto))
            {
                yto = y;
            }
            xstart = x;
            ystart = y;
            if (movetoRelative)
            {
                xto += x;
                yto += y;
            }
            movetoDuration = point_distance(x, y, xto, yto) / spd;
            break;
            
        case "step":
            movetoT++;
            var f = clamp(movetoT / movetoDuration, 0, 1);
            f = scrEaseValue(f, movetoEase)
            
            var tx = lerp(xstart, xto, f);
            var ty = lerp(ystart, yto, f);
            hspeed = tx - x;
            vspeed = ty - y;
            break;
    }
}
else
{
    if (argument_count >= 1) { xto = argument[0]; }
    if (argument_count >= 2) { yto = argument[1]; }
    if (argument_count >= 3) { spd = argument[2]; }
    if (argument_count >= 4) { movetoEase = argument[3]; }
    if (argument_count >= 5) { movetoRelative = argument[4]; }
}
