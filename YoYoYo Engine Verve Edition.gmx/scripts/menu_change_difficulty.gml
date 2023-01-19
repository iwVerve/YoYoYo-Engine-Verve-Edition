///menu_change_difficulty(difficulty)

difficultySelect = modwrap(argument0, -exists[savefileSelect], global.difficultyCount);
audio_play_sound(global.menuSound, 0, false);
