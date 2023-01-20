///menu_start_new_game(difficulty)

var difficulty = argument0;

global.gameStarted = true; //enables saving, restarting, etc.
global.autosave = true;

savedata_new_game(difficulty);

if (file_exists("Data\save" + string(global.savenum)))
{
    file_delete("Data\save" + string(global.savenum));
}

room_goto(global.startRoom);
