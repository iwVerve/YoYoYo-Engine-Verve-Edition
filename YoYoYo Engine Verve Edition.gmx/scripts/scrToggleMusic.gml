///scrToggleMusic()
//Toggles the music on and off

global.muteMusic = !global.muteMusic;

if (!global.muteMusic)
{
    if (instance_exists(objPlayer) || !global.gameStarted || global.gamePaused)
    {
        if (!instance_exists(objPlayMusic))  //Make sure the play music object isn't in the current room
        {
            scrGetMusic();
        }
        else    //objPlayMusic is in the room, use it to play music instead
        {
            with (objPlayMusic)
            {
                if (roomSong != -2)
                    scrPlayMusic(roomSong, true);
            }
        }
    }
}
else
{
    scrStopMusic();
    audio_stop_sound(global.gameOverMusic);
}
