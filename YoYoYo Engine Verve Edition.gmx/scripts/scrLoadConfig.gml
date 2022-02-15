///scrLoadConfig()
///Loads config settings, sets default config if it doesn't exist

ini_open("config.ini");
             
global.muteMusic = ini_read_real("Settings", "Mute_music", false);

global.volumeLevel = clamp(floor(ini_read_real("Settings", "Volume_level", 100)), 0, 100);
audio_master_gain(global.volumeLevel/100);

global.fullscreenMode = ini_read_real("Settings", "Fullscreen_mode", false);
window_set_fullscreen(global.fullscreenMode);

global.smoothingMode = ini_read_real("Settings", "Smoothing_mode", false);

global.vsyncMode = ini_read_real("Settings", "Vsync_mode", false);
if (global.vsyncMode)
{
    scrSetVsync();
}

scrControls("loadKeyboardConfig");

//Menu keys (not rebindable)
global.menuLeftButton[0] = vk_left;
global.menuRightButton[0] = vk_right;
global.menuUpButton[0] = vk_up;
global.menuDownButton[0] = vk_down;
global.menuAcceptButton[0] = vk_shift;
global.menuBackButton[0] = ord("Z");
global.menuOptionsButton[0] = vk_enter;

if (global.controllerEnabled)
{                       
    scrControls("loadControllerConfig");
}

//Menu buttons (not rebindable)
global.menuLeftButton[1] = gp_padl;
global.menuRightButton[1] = gp_padr;
global.menuUpButton[1] = gp_padu;
global.menuDownButton[1] = gp_padd;
global.menuAcceptButton[1] = gp_face1;
global.menuBackButton[1] = gp_face2;
global.menuOptionsButton[1] = gp_select;

ini_close();

scrSaveConfig();    //Save config in case something changed
