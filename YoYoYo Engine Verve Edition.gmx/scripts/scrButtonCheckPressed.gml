///scrButtonCheckPressed(button)
//Checks whether a button is being pressed this frame

var button = argument0;

if (!global.controllerMode)
{
    return (keyboard_check_pressed(global.controls[button, 0]));
}
else
{
    return (gamepad_button_check_pressed(global.controllerIndex, global.controls[button, 1]));
}
