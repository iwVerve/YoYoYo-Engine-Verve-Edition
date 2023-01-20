///savedata_get(key, [default])

var key = argument[0];
var def = 0;
if argument_count > 1 {
    def = argument[1];
}

if ds_map_exists(global.saveData, key) {
    return global.saveData[? key];
}
else {
    return def;
}
