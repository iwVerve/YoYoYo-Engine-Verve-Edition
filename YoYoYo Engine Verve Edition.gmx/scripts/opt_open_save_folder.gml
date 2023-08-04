///opt_open_save_folder(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return false;

    case "init":
        //Called when the menu gets created
        break;
        
    case "step":
        //Called every frame the option is selected
        if input_check_pressed(KEY.MENU_ACCEPT)
        {
            execute_shell_simple(game_save_id);
            audio_play_sound(global.menuSound, 0, false);
        }
        break;
        
    case "name":
        return "Open save folder";
        
    case "value":
        return "";
}
