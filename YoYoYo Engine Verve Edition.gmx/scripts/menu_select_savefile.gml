///menu_select_savefile()

if (global.menuMode == 0)   //Difficulty select room
{
    global.savenum = savefileSelect+1;
    room_goto(rDifficultySelect);
}
else    //Difficulty select menu
{
    fileSelected = true;
    if (exists[savefileSelect]) //Default to Load game if file exists
        difficultySelect = -1;
    else
        difficultySelect = 0;
}
