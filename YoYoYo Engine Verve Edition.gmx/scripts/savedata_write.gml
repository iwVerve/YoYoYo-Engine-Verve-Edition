///savedata_write()

// Saves the savefile to disk.

var file = file_text_open_write("Data\save" + string(global.savenum));
    file_text_write_string(file, base64_encode(json_encode(global.persistentSaveData)));
file_text_close(file);
