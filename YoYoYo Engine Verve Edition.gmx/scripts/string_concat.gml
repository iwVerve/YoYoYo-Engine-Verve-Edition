///string_concat(str, ...)

var str = "";

for (var i = 0; i < argument_count; i += 1) {
    str += string(argument[i]);
}
