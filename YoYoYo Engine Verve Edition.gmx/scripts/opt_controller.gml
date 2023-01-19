///opt_controller(type)

switch(argument0)
{
    case "include":
        return global.controllerEnabled;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "step":
        //Called every frame the option is selected
        if (input_check_pressed(KEY.MENU_ACCEPT))
        {
            audio_play_sound(global.menuSound, 0, false);
            config_save(); //Save changes
            global.menuSelectPrev[1] = select;
            instance_create(x, y, objControllerMenu);
            instance_destroy();
            exit;
        }
        break;
        
    case "name":
        return "Controller Options";
        
    case "value":
        return "";
}
