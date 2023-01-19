///print(str, ...)

var out = "";

for (var i = 0; i < argument_count; i += 1) {
    out += string(argument[i]);
}

show_debug_message(out);
