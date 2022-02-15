///scrCheckAndSwitchController()
//Checks whether to switch between keyboard and controller, and handles the associated delay.

if (global.controllerEnabled && global.controllerIndex != -1)
{
    //Handle switching between keyboard and controller
    if (!global.controllerMode)    //to controller
    {
        if (keyboard_check_pressed(vk_anykey))
        {
            global.controllerDelay = -1;
        }
        if (scrAnyControllerButton() != -1 && global.controllerDelay == -1)
        {
            global.controllerDelay = global.controllerDelayLength;
        }
    }
    else    //to keyboard
    {
        if (scrAnyControllerButton() != -1)
        {
            global.controllerDelay = -1;
        }
        else if (keyboard_check_pressed(vk_anykey) && global.controllerDelay == -1)
        {    
            global.controllerDelay = global.controllerDelayLength;
        }
    }
    
    //Check delay for switching between keyboard/controller
    if (global.controllerDelay > -1)
    {
        if (global.controllerDelay == 0)    //Delay over, switch controller mode
        {
            global.controllerMode = !global.controllerMode;
        }
        global.controllerDelay -= 1;
    }
}
