///savedata_set_persistent(key, value)

// Saves a value in the savefile immediately, such as an autosaving secret item.

savedata_set(argument0, argument1);
global.persistentSaveData[? argument0] = argument1;
