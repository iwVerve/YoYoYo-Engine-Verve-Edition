///scrPlayMusic(soundid, loops)
//Plays a song if it's not already playing

var songID = argument0; //song to play (-1 plays nothing and stops anything currently playing)
var loopSong = argument1; //whether or not to loop the song

if (!global.muteMusic)  //Check if music is supposed to be muted
{
    if (global.currentMusicID != songID)  //Checks if the song to play is already playing
    {
        global.currentMusicID = songID;
        
        audio_stop_sound(global.currentMusic);
        
        if (songID != -1)
        {
            global.currentMusic = audio_play_sound(global.currentMusicID, 1, loopSong);
        }
    }
}
