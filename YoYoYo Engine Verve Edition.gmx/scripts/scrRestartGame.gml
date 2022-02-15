///scrRestartGame()
///restarts the game

if (surface_exists(global.pauseSurf))
{
    surface_free(global.pauseSurf);
}

game_restart();
