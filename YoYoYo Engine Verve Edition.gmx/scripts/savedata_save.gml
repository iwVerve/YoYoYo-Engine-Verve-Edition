///savedata_save(savePosition)

// Saves the game. The argument specifies whether to save the player progress, or just the deathcount and playtime.

var savePosition = argument0;

savedata_set("saved", true);

if savePosition && instance_exists(objPlayer) {
    savedata_set("room", room_get_name(room));
    savedata_set("playerX", objPlayer.x);
    savedata_set("playerY", objPlayer.y);
    savedata_set("playerXScale", objPlayer.xScale);
    savedata_set("grav", global.grav);
    savedata_set("difficulty", global.difficulty);
    
    ds_map_copy(global.persistentSaveData, global.saveData);
}

ds_map_delete(global.persistentSaveData, "md5");
global.persistentSaveData[? "md5"] = md5_string_unicode(json_encode(global.persistentSaveData) + global.md5StrAdd);

savedata_write();
