///savedata_new_game(difficulty)

// Sets the necessary variables for a new game.

ds_map_clear(global.saveData);

savedata_set("room", room_get_name(global.startRoom));
savedata_set("difficulty", argument0);
savedata_set("death", 0);
savedata_set("time", 0);
savedata_set("grav", 1);

ds_map_copy(global.persistentSaveData, global.saveData);

savedata_load(false);
