///music_stop()

// Stops any music currently playing.

global.currentMusicID = -1;

audio_stop_sound(global.currentMusic);
