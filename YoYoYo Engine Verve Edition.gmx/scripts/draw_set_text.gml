///draw_set_text(halign, valign, color, font)

var halign = undefined;
if argument_count > 0 {
    halign = argument[0];
}
if !is_undefined(halign) {
    draw_set_halign(halign);
}

var valign = undefined;
if argument_count > 1 {
    valign = argument[1];
}
if !is_undefined(valign) {
    draw_set_valign(valign);
}

var color = undefined;
if argument_count > 2 {
    color = argument[2];
}
if !is_undefined(color) {
    draw_set_color(color);
}

var font = undefined;
if argument_count > 3 {
    font = argument[3];
}
if !is_undefined(font) {
    draw_set_font(font);
}

