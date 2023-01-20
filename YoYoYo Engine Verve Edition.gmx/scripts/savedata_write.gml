///savedata_write()

var file = file_text_open_write("Data\save" + string(global.savenum));
    file_text_write_string(file, json_encode(global.persistentSaveData));
file_text_close(file);
