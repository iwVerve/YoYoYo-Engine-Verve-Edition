///scrCheckAndPause()
//Checks whether to (un)pause, does so.

if (global.pauseDelay <= 0)    //Check if pause delay is active
{
    if (scrButtonCheckPressed(KEY.PAUSE))
    {
        if (!global.gamePaused)    //Not paused, pause the game
        {
            if (!global.noPause)
            {
                global.gamePaused = true;
                global.pauseDelay = global.pauseDelayLength;
                
                with(objPlayer)
                {
                    if (!place_free(x, y + gravity))
                    {
                        y -= gravity;
                    }
                }
                
                instance_deactivate_all(true);
                instance_activate_object(objPlayMusic); //If objPlayMusic sets the current music, we need to find it if we turn on music in the pause options.
                
                global.pauseSurf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
                surface_copy(global.pauseSurf, 0, 0, application_surface);
                
                //Fix transparent objects appearing dark when paused
                surface_set_target(global.pauseSurf);
                    draw_set_blend_mode(bm_add);
                    draw_set_color(c_black);
                    draw_rectangle(0, 0, surface_get_width(global.pauseSurf), surface_get_height(global.pauseSurf), false);
                    draw_set_blend_mode(bm_normal);
                surface_reset_target();
            }
        }
        else    //Paused, unpause the game
        {
            instance_destroy(objOptionsMenu);
            instance_destroy(objKeyboardControlsMenu);
            instance_destroy(objControllerMenu);
            
            global.gamePaused = false;
            global.pauseDelay = global.pauseDelayLength;
            
            instance_activate_all();
            
            if (surface_exists(global.pauseSurf))
            {
                surface_free(global.pauseSurf);
            }
            
            scrSaveConfig();    //Save config in case volume levels were changed
            
            io_clear();    //Clear input states to prevent possible pause strats/exploits
        }
    }
}
else
{
    global.pauseDelay -= 1;
}
