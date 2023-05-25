///color_multiply(color_a, color_b);

var color_a = argument0;
var color_b = argument1;

return make_color_rgb(
    color_get_red(color_a)   * color_get_red(color_b)   / 255,
    color_get_green(color_a) * color_get_green(color_b) / 255,
    color_get_blue(color_a)  * color_get_blue(color_b)  / 255,
);
