///menu_load_savefile()

if (file_exists("Data\save" + string(global.savenum))) {
    savedata_load(true);
}
