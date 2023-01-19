///music_toggle()
// Toggles the music on and off

global.muteMusic = !global.muteMusic;

if (!global.muteMusic)
{
    if (instance_exists(objPlayer) || !global.gameStarted || global.gamePaused)
    {
        if (!instance_exists(objPlayMusic))  //Make sure the play music object isn't in the current room
        {
            music_play_room_bgm();
        }
        else    //objPlayMusic is in the room, use it to play music instead
        {
            with (objPlayMusic)
            {
                if (roomSong != -2)
                    music_play(roomSong, true);
            }
        }
    }
}
else
{
    music_stop();
    audio_stop_sound(global.gameOverMusic);
}
