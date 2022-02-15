///optVolume(type)

switch(argument0)
{
    case "include":
        return true;
    
    case "inPause":
        //Whether or not to include this option on the pause screen
        return true;
        
    case "init":
        volumeTimer = 0;
        volumeDelay = 10;
        break;
        
    case "step":
        //Called every frame the option is selected
        var hPress = scrButtonCheckPressed(KEY.MENU_RIGHT) - scrButtonCheckPressed(KEY.MENU_LEFT);
        var h = scrButtonCheck(KEY.MENU_RIGHT) - scrButtonCheck(KEY.MENU_LEFT);
        if (hPress != 0)
        {
            global.volumeLevel += hPress;
            volumeTimer = volumeDelay;
        }
        if (h != 0)
        {
            if (volumeTimer <= 0)
            {
                global.volumeLevel += h;
            }
            volumeTimer--;
        }
        global.volumeLevel = clamp(global.volumeLevel, 0, 100);
        audio_master_gain(global.volumeLevel/100);
        break;
        
    case "name":
        return "Volume Level";
        
    case "value":
        return string(global.volumeLevel) + "%";
}
