///optTest2(type)

switch(argument0)
{
    case "include":
        return random(1) > 0.5;
    
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
        }
        var h = scrButtonCheck(KEY.RIGHT) - scrButtonCheck(KEY.LEFT);
        if (h != 0)
        {
            //Adjust option
            show_message("D:");
        }
        break;
        
    case "name":
        return "Test 2";
        
    case "value":
        return random(string_format(random(1), 0, 2));
    
    case "end":
        //Called when the option is deselected
        print("D:");
        break;
}
