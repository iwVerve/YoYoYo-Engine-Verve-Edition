///spawn_shape(x, y, angle, edges, numprojectiles, speed, obj)

// Spawns a custom shape made out of the provided object.

var spawnX = argument0;
var spawnY = argument1;
var spawnAngle = argument2;
var spawnEdges = argument3; //3 = triangle, 4 = square, etc.
var spawnNum = argument4; //Projectiles per edge
var spawnSpeed = argument5;
var spawnObj = argument6;
var th, xx, yy, ddx, ddy, dx, dy, a;

th = degtorad(spawnAngle);

for (var i = 0; i < spawnEdges; i += 1)
{
    xx[i] = cos(th + 2*pi * i/spawnEdges);
    yy[i] = sin(th + 2*pi * i/spawnEdges);
}

xx[spawnEdges] = xx[0];
yy[spawnEdges] = yy[0];

for (var i = 0; i < spawnEdges; i += 1)
{
    ddx = xx[i+1] - xx[i];
    ddy = yy[i+1] - yy[i];
    
    for(var j = 0; j < spawnNum; j += 1)
    {
        dx = xx[i] + ddx*j / spawnNum;
        dy = yy[i] + ddy*j / spawnNum;
        
        a = instance_create(spawnX+dx, spawnY+dy, spawnObj);
        a.direction = point_direction(0, 0, dx, dy);
        a.speed = spawnSpeed * point_distance(0, 0, dx, dy);
    }
}
