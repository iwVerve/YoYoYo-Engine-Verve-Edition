///scrMakeTrigger([trg])
//Use this to make any object triggerable. Check objTriggerManager Create event for options.
//Use example:
//with(scrMakeTrigger(1))
//{
//    h = 5;
//}

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
return tInst;
