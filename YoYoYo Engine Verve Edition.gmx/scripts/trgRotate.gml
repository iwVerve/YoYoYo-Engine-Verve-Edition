///trgRotate(type/degrees, speed)
//Rotates an object.
//Arguments:
//1. degrees - positive is clockwise.
//2. speed - degrees per frame, doesn't matter if positive or negative.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            rotateDegrees = 0;
            rotateSpeed = 0;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            return (rotateDegrees != 0);
            
        case "init":
            rotateStart = image_angle;
            break;
            
        case "step":
            image_angle += sign(rotateDegrees) * abs(rotateSpeed);
            if (abs(image_angle - rotateStart) > abs(rotateDegrees))
            {
                image_angle = rotateStart + rotateDegrees;
                rotateSpeed = 0;
            }
            break;
    }
}
else
{
    if (argument_count >= 1) { rotateDegrees = argument[0]; }
    if (argument_count >= 2) { rotateSpeed = argument[1]; }
}
