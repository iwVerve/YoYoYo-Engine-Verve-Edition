///opt_fullscreen(type)

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
            global.fullscreenMode = !global.fullscreenMode;
            window_set_fullscreen(global.fullscreenMode);
            audio_play_sound(global.menuSound, 0, false);
        }
        break;
        
    case "name":
        return "Screen Mode";
        
    case "value":
        return ternary(global.fullscreenMode, "Fullscreen", "Windowed");
}
