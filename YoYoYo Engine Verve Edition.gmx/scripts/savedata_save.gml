///savedata_save(savePosition)

var savePosition = argument0;

if savePosition && instance_exists(objPlayer) {
    savedata_set("room", room_get_name(room));
    savedata_set("playerX", objPlayer.x);
    savedata_set("playerY", objPlayer.y);
    savedata_set("playerXScale", objPlayer.xScale);
    savedata_set("grav", global.grav);
    savedata_set("difficulty", global.difficulty);
}

savedata_set("saved", true);

ds_map_delete(global.saveData, "md5");
global.saveData[? "md5"] = md5_string_unicode(json_encode(global.saveData) + global.md5StrAdd);

ds_map_copy(global.persistentSaveData, global.saveData);

savedata_write();
