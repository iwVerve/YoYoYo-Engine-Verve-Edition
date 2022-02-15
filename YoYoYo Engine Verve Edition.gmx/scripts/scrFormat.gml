///scrFormat(string)
//Returns input string with all variable names in curly brackets replaced with that variable's value.
//Example: scrFormat("Deaths: {global.deaths}") could return "Deaths: 5".
//Code by pieceofcheese87

//This script has a not insignificant impact on performance. While isolated uses will not cause any noticable slowdown, usage across a whole project will.
//Generally I would advise against ever using this script in situations where it would run every frame. If you can, run it only once and cache the result.
//If you can't, like if the string actually needs to change often, construct the string the long way.

var src = argument0;

var str = "";
var temp = "";
var replace = false;
var inst = "";

for(var i=1; i<=string_length(src); i++) {
    var char = string_char_at(src,i);
    if char == '{' {
        replace = true
    }
    else if char == '}' && replace {
        replace = false
        if (inst == "") {
            inst = id;
        }
        else {
            switch(inst) {
                case "id": inst = id break
                case "self": inst = self break
                case "other": inst = other break
                case "global":
                    if !variable_global_exists(temp) {
                        return "FORMAT ERROR: Global variable "+temp+" not found!"   
                    }
                    str += string(variable_global_get(temp))
                    inst = ""
                    temp = ""
                    continue
                default:
                    var index = asset_get_index(inst)
                    if (index == -1) {
                        return "FORMAT ERROR: Nonexistent object name " + inst
                    }
                    if (instance_exists(index)) {
                        inst = instance_find(index, 0)
                    }
                    else {
                        str += "<no instance>" inst = "" temp = "" continue
                    }
                    break
            }
        }
        if !variable_instance_exists(inst,temp) {
            return "FORMAT ERROR: Variable "+temp+" not found!"   
        }
        str += string(variable_instance_get(inst,temp))
        inst = ""
        temp = ""
    }
    else if char == '}' && !replace {
        return "FORMAT ERROR: Found closing bracket without opener"
    }
    else if (char =='.' && replace) {
        if (inst != "") {
            return "FORMAT ERROR: Trying to access nested local variable"
        }
        inst = temp
        temp = ""
    }
    else {
        if replace {
            temp += char
        }
        else {
            str += char
        }
    }
}

return str
