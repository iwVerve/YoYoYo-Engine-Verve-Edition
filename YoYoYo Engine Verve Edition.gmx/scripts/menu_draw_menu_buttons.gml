///menu_draw_menu_buttons(optionsText)
// Draws the button control info for menus
// argument0 - sets whether to draw the text for entering the options menu

var optionsText = argument0;

var backButton;
var acceptButton;
var optionsButton;

//check whether to display keyboard or controller buttons
if (!global.controllerMode)
{
    backButton = input_get_key_name(global.menuBackButton[0]);
    acceptButton = input_get_key_name(global.menuAcceptButton[0]);
    optionsButton = input_get_key_name(global.menuOptionsButton[0]);
}
else
{
    backButton = input_get_button_name(global.menuBackButton[1]);
    acceptButton = input_get_button_name(global.menuAcceptButton[1]);
    optionsButton = input_get_button_name(global.menuOptionsButton[1]);
}

//button info
draw_set_font(fDefault12);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(34, 556, "["+backButton+"] Back");
draw_set_halign(fa_right);
draw_text(766, 556, "["+acceptButton+"] Accept");

if (optionsText)
{
    //draw button info for the options menu
    
    draw_set_halign(fa_middle);
    draw_text(400, 556, "["+optionsButton+"] Options");
}
