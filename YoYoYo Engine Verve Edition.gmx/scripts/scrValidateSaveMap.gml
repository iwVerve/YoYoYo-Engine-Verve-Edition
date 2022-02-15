///scrValidateSaveMap(map)

var map = argument0;

var saveValid = true;          
if (map != -1)
{
    var invalidRoomFormat = (!is_string(map[? "room"]));
    var nonexistentRoom = (!room_exists(asset_get_index(map[? "room"])));
    var invalidMd5 = false;
    
    var oldMd5 = map[? "md5"];
    if (is_string(oldMd5))
    {        
        ds_map_delete(map, "md5");
        var newMd5 = md5_string_unicode( json_encode(map) + global.md5StrAdd );  
        invalidMd5 = (oldMd5 != newMd5);
    }
    else
    {
        invalidMd5 = true;
    }
    
    if (invalidRoomFormat || nonexistentRoom || invalidMd5)
    {
        saveValid = false;     
    }
}
else
{
    saveValid = false;
}

return saveValid;
