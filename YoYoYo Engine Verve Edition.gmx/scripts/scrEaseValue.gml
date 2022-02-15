///scrEaseValue(val, type)

var val = argument0;
switch(argument1)
{
    case 1: //Ease in
    case "in":
        return power(val, 2);                                         
    case -1: //Ease out
    case "out":
        return 1 - power(1 - val, 2);                                     
    case 0: //Ease in out
    case "inout":
        return lerp(scrEaseValue(val, 1), scrEaseValue(val, -1), val);
    default:
        return val;
}
