///savedata_set(key, value)

// Sets a value in the savefile. The game needs to saved for this value to not reset.
// To autosave a value immediately, use savedata_set_persistent.

global.saveData[? argument0] = argument1;
