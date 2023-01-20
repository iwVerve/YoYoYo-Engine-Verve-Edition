///savedata_validate()

if global.saveData == -1 {
    print("Save map failed to load properly");
    return false;
}

if !is_string(savedata_get("room")) {
    print("Save room isn't a string");
    return false;
}

if !room_exists(asset_get_index(savedata_get("room"))) {
    print("Save room doesn't exist in the game");
    return false;
}

var oldMd5 = global.saveData[? "md5"];
if is_string(oldMd5) {
    ds_map_delete(global.saveData, "md5");
    var newMd5 = md5_string_unicode(json_encode(global.saveData) + global.md5StrAdd);  
    if oldMd5 != newMd5 {
        print("md5 hash doesn't match");
        return false;
    }
}
else {
    print("Md5 in save map wasn't a string");
    return false;
}

return true;
