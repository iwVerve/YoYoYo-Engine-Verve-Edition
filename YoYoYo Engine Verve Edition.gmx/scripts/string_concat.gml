///string_concat(str, ...)

// Connects all provided arguments to a string and joins them.

var str = "";

for (var i = 0; i < argument_count; i += 1) {
    str += string(argument[i]);
}

return str;
