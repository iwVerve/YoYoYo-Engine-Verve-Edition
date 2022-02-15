///Sets configurable global options

//Debug
global.debugMode = true;        //Enables debug keys (check objWorld step to see all of them), make sure to set this to "false" before releasing your game
global.debugVisuals = true;     //Enables changing the color/alpha of player when infjump/god mode are toggled, make sure to disable this if you want to change the player's image_alpha or image_blend

//Updates
global.checkForUpdates = false;
global.versionDataUrl = "https://pastebin.com/raw/Z5sWFNap";
global.gameVersion = "1.0";

//Menu
global.menuMode = 1;                //Sets whether to use a warp room or a menu for selecting the game's difficulty (0 = warp room, 1 = menu)
global.menuSound = sndJump;         //Sets what sound to use for navigating the main menu

//World
global.startRoom = rSample;         //Sets which room to begin with
global.roomCaptionDef = "YoYoYo Engine Verve Edition";  //Sets default window caption (only works with the Professional version of Studio)
global.deathMusicMode = 0;          //Sets whether or not to play death music when the player dies (0 = no death music, 1 = instantly pause current music, 2 = fade out current music)
global.pauseDelayLength = 40;       //Sets the delay in frames in which the player can pause/unpause the game (can be set to 0 to disable pause delay)
global.timeWhenDead = true;         //Sets whether or not to count the in-game timer when the player is dead
global.timeWhenCleared = false;     //Increment the timer after the save file is considered finished
global.platformsPhase = false;      //Sets whether or not to let the player fall through the platform or into the block when pushing them against a ceiling.
global.blocksCrush = true;          //Makes getting stuck in the wall due to moving blocks or platforms kill the player.

//Player
global.adAlign = false;             //Sets whether or not to enable A/D align
global.edgeDeath = true;            //Sets whether to kill the player when he leaves the boundaries of the room
global.directionalTapFix = false;   //Sets whether to change the behavior of tapping left/right for less than 1 frame (by default the player does not move when this happens, enabling this always moves the player for 1 frame when left/right is tapped)
global.strictSaveBlockers = true;   //Bullets check for saveblocker collision when created instead of only after a frame of movement
global.fixBulletHeight = true;      //Spawns bullets 3px higher, accurate to where the gun is.

//Items
global.secretItemTotal = 8;         //Sets how many secret items for the game to save/load
global.bossItemTotal = 8;           //Sets how many boss items for the game to save/load
global.autosaveSecretItems = false; //Sets whether to save secret items immediately when you grab them or if you have to hit a save

//Controller
global.controllerEnabled = true;    //Sets whether controllers are supported
global.controllerDelayLength = 5;   //Sets the delay in frames in which the player can switch between keyboard/controller (can be set to 0 to disable delay)

//Difficulty
global.difficultyCount = 4;
global.difficultyNames[0] = "Load Game";
global.difficultyNames[1] = "Medium";
global.difficultyNames[2] = "Hard";
global.difficultyNames[3] = "Very Hard";
global.difficultyNames[4] = "Impossible";

//Savefiles
global.extraSaveProtection = false; //Sets whether to use the ds_map_secure functions for saving/loading (improves save security and prevents transferring between PCs)
global.md5StrAdd = "Put something here"; //sets what to add to the end of md5 input string to make the save harder to mess with, can be changed to anything, should be set to something unique and hard to predict (like setting a password)
