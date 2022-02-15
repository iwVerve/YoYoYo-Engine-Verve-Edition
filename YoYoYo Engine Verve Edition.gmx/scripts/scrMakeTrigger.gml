///scrMakeTrigger([trg])
//Use this to make any object triggerable. Check individual trigger scripts for documentation.
//Use example:
/* 
with(scrMakeTrigger(1))
{
    trgMove(5, 0)
}
*/

var tInst = instance_create(x, y, objTriggerManager)
with(tInst)
{
    inst = other;
    if (argument_count >= 1)
    {
        trg = argument[0];
    }
}
if (!variable_instance_exists(id, "_currentTrigger"))
{
    _currentTrigger = noone;
}
global.makingTrigger = true;
return tInst;
