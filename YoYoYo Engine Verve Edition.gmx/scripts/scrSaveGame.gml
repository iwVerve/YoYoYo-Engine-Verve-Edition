///scrSaveGame(saveposition)
///saves the game
///argument0 - sets whether the game should save the player's current location or just save the deaths/time

var savePosition = argument0;

if (savePosition)
{
    global.saveMap[? "room"] = room_get_name(room);
    global.saveMap[? "playerX"] = objPlayer.x;
    global.saveMap[? "playerY"] = objPlayer.y;
    global.saveMap[? "playerXScale"] = objPlayer.xScale;
    global.saveMap[? "grav"] = global.grav;
    
    //Check for floored position shenanigans
    with(objPlayer)
    {
        var px = global.saveMap[? "playerX"];
        var py = global.saveMap[? "playerY"];
        if (!place_free(floor(px), py))
            { global.saveMap[? "playerX"] += 1; }
            
        if (!place_free(px, floor(py)))
            { global.saveMap[? "playerY"] += 1; }
            
        if (!place_free(floor(px), floor(py)))
        {
            global.saveMap[? "playerX"] += 1;
            global.saveMap[? "playerY"] += 1;
        }                               
    }
    global.saveMap[? "playerX"] = floor(global.saveMap[? "playerX"]);
    global.saveMap[? "playerY"] = floor(global.saveMap[? "playerY"]);
    
    
    for (var i = 0; i < global.secretItemTotal; i++)
    {
        global.saveMap[? "secretItem" + string(i)] = global.secretItem[i];
    }
    for (var i = 0; i < global.bossItemTotal; i++)
    {
        global.saveMap[? "bossItem" + string(i)] = global.bossItem[i];
    }
    
    global.saveMap[? "gameClear"] = global.gameClear;
    
    //ADD NEW SAVED VALUES HERE
    
}
                     
                              
global.saveMap[? "death"] = global.death;
global.saveMap[? "time"] = global.time;
global.saveMap[? "timeMicro"] = global.timeMicro;
global.saveMap[? "difficulty"] = global.difficulty;

ds_map_delete(global.saveMap, "md5");
global.saveMap[? "md5"] = md5_string_unicode( json_encode(global.saveMap) + global.md5StrAdd );  

//Save map to file
if (global.extraSaveProtection)
{
    ds_map_secure_save(global.saveMap, "Data\save" + string(global.savenum));
}
else
{
    var file = file_text_open_write("Data\save" + string(global.savenum));
    file_text_write_string(file, base64_encode(json_encode(global.saveMap)));
    file_text_close(file);  
}
