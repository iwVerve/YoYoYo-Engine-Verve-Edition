///menu_draw_option(name, value)

// Draws the option/value text, with its vertical position depending on the currentSlot variable.
                        
if (argument_count >= 1)
{
    draw_set_halign(fa_left);
    draw_text(xMargin, yStart + yStep * currentSlot, argument[0]);
}

if (argument_count >= 2)
{
    draw_set_halign(fa_right);
    draw_text(view_wview - xMargin, yStart + yStep * currentSlot, argument[1]);
}

currentSlot += 1;
