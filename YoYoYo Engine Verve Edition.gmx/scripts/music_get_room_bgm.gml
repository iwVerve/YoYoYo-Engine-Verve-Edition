///music_get_room_bgm()
// Gets which song is supposed to be playing for the current room

switch (room)
{
    case rTitle:            //Add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
    case rSample:                                                                                                            
        return "GuyRock";
        
    case rCherryBoss:
        return "Megaman";
        
    case rMiku:
        return -2;          //Don't change the music in any way (the Miku object plays it)
        
    case rEnd:
    default:
        return -1;          //Play nothing
}
