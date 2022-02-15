///scrGetMusic()
//Gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //Determines which song to play
{
    case rTitle:                    //Add rooms here, if you have several rooms that play the same song they can be put together
    case rMenu:
    case rOptions:
    case rDifficultySelect:
    case rSample:                                                                                                            
        roomSong = musGuyRock;
        break;                      //Make sure to always put a break after setting the song
        
    case rCherryBoss:
        roomSong = musMegaman;
        break;
        
    case rMiku:
        roomSong = -2;              //Don't change the music in any way (the Miku object plays it)
        break;
        
    case rEnd:
    default:
        roomSong = -1;              //Play nothing
        break;
}

if (roomSong != -2)
{
    scrPlayMusic(roomSong, true);
}
