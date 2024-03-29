///set_room_caption()

// Sets the room caption to display death/time information.

var roomCaption = global.roomCaptionDef;

if (global.gameStarted)
{
    roomCaption += " -"
    roomCaption += " Deaths: " + string(savedata_get("death"));
    roomCaption += " Time: ";
    
    var t = floor(savedata_get("time"));
    
    roomCaption += string(t div 3600) + ":";
    t = t mod 3600;
    roomCaption += string(t div 600);
    t = t mod 600;
    roomCaption += string(t div 60) + ":";
    t = t mod 60;
    roomCaption += string(t div 10);
    t = t mod 10;
    roomCaption += string(t);
}

if (roomCaption != global.roomCaptionLast)
{
    window_set_caption(roomCaption);
}

global.roomCaptionLast = roomCaption;
