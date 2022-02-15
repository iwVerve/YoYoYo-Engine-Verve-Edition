///scrButtonCheckReleased(button)
//Checks whether a button is being released this frame

var button = argument0;

if (!global.controllerMode)
{
    return (keyboard_check_released(global.controls[button, 0]));
}
else
{
    return (gamepad_button_check_released(global.controllerIndex, global.controls[button, 1]));
}
