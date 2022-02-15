///trgSound(type/sound, [volume])
//Plays a sound when triggered
//Arguments:
//1. sound
//2. [volume] - 1 by default.

if (!global.makingTrigger)
{
    switch(argument[0])
    {
        case "define":
            sound = noone;
            volume = 1;
            break;
            
        case "exclusive":
            return false;
        
        case "isUsed":
            return (sound != noone);
            
        case "init":
            var snd = audio_play_sound(sound, 0, false);
            audio_sound_gain(snd, volume, 0);
            break;
    }
}
else
{
    if (argument_count >= 1) { sound = argument[0]; }
    if (argument_count >= 2) { volume = argument[1]; }
}
