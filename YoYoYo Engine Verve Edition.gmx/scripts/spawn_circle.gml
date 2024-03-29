///spawn_circle(x,y,angle,numprojectiles,speed,obj)

// Spawns a ring of projectiles.

var spawnX = argument0;
var spawnY = argument1;
var spawnAngle = argument2;
var spawnNum = argument3;
var spawnSpeed = argument4;
var spawnObj = argument5;
var a;

for (var i = 0; i < spawnNum; i += 1)
{
    a = instance_create(spawnX, spawnY, spawnObj);
    a.speed = spawnSpeed;
    a.direction = spawnAngle + i * (360 / spawnNum);
}
