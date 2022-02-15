///scrDrawTextOutline(x, y, string, textcolor, outlinecolor)
//Draws any text with an outline

var textX = argument0;
var textY = argument1;
var textStr = argument2;
var textColor = argument3;
var outlineColor = argument4;

//Draw the text outline
draw_set_color(outlineColor);
for (var xx = -1; xx <= 1; xx++)
{
    for (var yy = -1; yy <= 1; yy++)
    {
        if (xx != 0 && yy != 0)
        {
            draw_text(textX + xx, textY + yy, textStr);
        }
    }
}

//Draw the text itself
draw_set_color(textColor);
draw_text(textX, textY, textStr);
