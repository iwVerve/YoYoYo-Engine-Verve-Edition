///optTest1(type)

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
        if (scrButtonCheckPressed(KEY.MENU_ACCEPT) || scrButtonCheckPressed(KEY.LEFT) || scrButtonCheckPressed(KEY.RIGHT))
        {
            //Switch option
            show_message(":D");
            audio_play_sound(sndJump, 0, false);
        }
        var h = scrButtonCheck(KEY.RIGHT) - scrButtonCheck(KEY.LEFT);
        if (h != 0)
        {
            //Adjust option
        }
        break;
        
    case "name":
        return "Test 1";
        
    case "value":
        return "100%";
    
    case "end":
        //Called when the option is deselected
        print(":D");
        break;
}
