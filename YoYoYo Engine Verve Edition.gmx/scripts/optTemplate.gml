///optTemplate(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;

    case "init":
        //Called when the menu gets created
        break;
        
    case "step":
        //Called every frame the option is selected
        if (scrButtonCheckPressed(KEY.MENU_ACCEPT) || scrButtonCheckPressed(KEY.MENU_LEFT) || scrButtonCheckPressed(KEY.MENU_RIGHT))
        {
            //Switch option
            audio_play_sound(global.menuSound, 0, false);
        }
        var h = scrButtonCheck(KEY.MENU_RIGHT) - scrButtonCheck(KEY.MENU_LEFT);
        if (h != 0)
        {
            //Adjust option
        }
        break;
        
    case "name":
        return "Example option";
        
    case "value":
        return "100%";
    
    case "end":
        //Called when the option is deselected
        break;
}
