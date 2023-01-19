///music_play_room_bgm()

var roomSong = music_get_room_bgm();

if roomSong != -2 {
    music_play(roomSong, true);
}
