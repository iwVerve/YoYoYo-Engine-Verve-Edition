///savedata_load(loadFile)

// Loads the game. The argument specifies whether to load the savefile from disk first.

var loadFile = argument0;
if loadFile {
    savedata_read();
    
    if !savedata_validate() {
        show_message("Save invalid!");
        restart_game();
        exit;
    }
}
else {
    ds_map_copy(global.saveData, global.persistentSaveData);
}

with(objPlayer) {
    instance_destroy();
}

global.gameStarted = true;



global.grav = savedata_get("grav");
global.difficulty = savedata_get("difficulty");

if savedata_get("saved") {
    with(instance_create(savedata_get("playerX"), savedata_get("playerY"), objPlayer)) {
        xScale = savedata_get("playerXScale");
    }
}

room_goto(asset_get_index(savedata_get("room")));
