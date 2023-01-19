///music_load(name)
//Loads a song from Included Files/Music/<name>.ogg if it hasn't been loaded previously.
//Returns the sound index you can then pass into audio_play_sound() and such as usual.

var name = argument0;

if (is_real(name))
{
    //Passed a number instead of a string. Assume this is the index of a regular sound asset and return it.
    return name;
}

var index = global.musicMap[? name];
if (is_undefined(index))
{
    //Load song from file
    var filename = "Music/" + name + ".ogg";
    if (file_exists(filename))
    {
        index = audio_create_stream(filename);
        global.musicMap[? name] = index;
    }
    else
    {
        //.ogg file with requested name doesn't exist in the Music folder.
        return -1;
    }
}

return index;
