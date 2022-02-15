///optKeyboard(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "step":
        //Called every frame the option is selected
        if (scrButtonCheckPressed(KEY.MENU_ACCEPT))
        {
            audio_play_sound(global.menuSound, 0, false);
            scrSaveConfig(); //Save changes
            global.menuSelectPrev[1] = select;
            instance_create(x, y, objKeyboardControlsMenu);
            instance_destroy();
            exit;
        }
        break;
        
    case "name":
        return "Set Keyboard Controls";
        
    case "value":
        return "";
}
