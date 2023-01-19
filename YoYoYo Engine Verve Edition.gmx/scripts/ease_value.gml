///ease_value(val, type)

enum EASE {
    NONE,
    IN,
    OUT,
    INOUT,
}

var val = argument0;
switch(argument1)
{
    case EASE.IN:
        return val * val
    case EASE.OUT:
        return 1 - power(1 - val, 2);                                     
    case EASE.INOUT:
        if val < 0.5 {
            return 2 * val * val;
        }
        else {
            return 1 - power(-2 * val + 2, 2) / 2;
        }
    case EASE.NONE:
    default:
        return val;
}
