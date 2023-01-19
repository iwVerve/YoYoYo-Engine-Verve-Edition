///opt_vsync(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "step":
        //Called every frame the option is selected
        if (input_check_pressed(KEY.MENU_ACCEPT) || input_check_pressed(KEY.MENU_LEFT) || input_check_pressed(KEY.MENU_RIGHT))
        {
            //Switch option
            global.vsyncMode = !global.vsyncMode;
            set_vsync();
            audio_play_sound(global.menuSound, 0, false);
        }
        break;
        
    case "name":
        return "VSync";
        
    case "value":
        return ternary(global.vsyncMode, "On", "Off");
}
