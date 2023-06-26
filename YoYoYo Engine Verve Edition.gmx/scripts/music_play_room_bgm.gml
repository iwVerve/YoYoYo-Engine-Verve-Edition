///music_play_room_bgm()

// Looks up the appropriate song for the current room and plays it.

var roomSong = music_get_room_bgm();

if roomSong != -2 {
    music_play(roomSong, true);
}
