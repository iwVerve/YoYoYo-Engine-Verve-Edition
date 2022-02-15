///scrPlayerShoot

if (instance_number(objBullet) < 4)
{
    instance_create(x, y - 3 * global.fixBulletHeight, objBullet);
    audio_play_sound(sndShoot, 0, false);
}
