///opt_music(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "step":
        if (input_check_pressed(KEY.MENU_ACCEPT) || input_check_pressed(KEY.MENU_LEFT) || input_check_pressed(KEY.MENU_RIGHT))
        {
            //Switch option
            music_toggle();
            audio_play_sound(global.menuSound, 0, false);
        }
        break;
        
    case "name":
        return "Music";
        
    case "value":
        return ternary(global.muteMusic, "Off", "On");
}
