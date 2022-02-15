///scrWrapInRange(val, a, b)
//Keeps val in a-b range by wrapping it around if it is out of range

var val = argument0;
var a = argument1;
var b = argument2;

var length = abs(a - b) + 1;

if (scrInRange(val, a, b)) return val;

else if (val > max(a, b))
{
    var steps = ceil( (val - max(a,b)) / length );
    return val - steps * length;
}

else
{
    var steps = ceil( (min(a,b) - val) / length );
    return val + steps * length;
}
