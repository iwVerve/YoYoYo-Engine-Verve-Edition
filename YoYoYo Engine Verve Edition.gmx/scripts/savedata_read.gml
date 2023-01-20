///savedata_read()

var file = file_text_open_read("Data\save" + string(global.savenum));   
    global.persistentSaveData = json_decode(file_text_read_string(file));
    ds_map_copy(global.saveData, global.persistentSaveData);
file_text_close(file);
