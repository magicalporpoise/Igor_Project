/// @description  collision_rectangle_list(trigger,obj,prec,notme)
/// @param trigger
/// @param obj
/// @param prec
/// @param notme
//
//  Returns a list data structure populated with the ids of instances 
//  colliding with a given rectangle, or noone if no instances found.
//
//      trigger     the object detecting for keys
//      obj         object to check for collision (or all), real
//      prec        true for precise collision checking, bool
//      notme       true to ignore the calling instance, bool
//
//      modified by Philip Stanley
/// GMLscripts.com/license
{
    var trigger,obj,prec,notme,dsid,i,halflength, halfheight, x1, y1, x2, y2;
    trigger = argument0;
    halflength = trigger.sprite_width/2;
    halfheight = trigger.sprite_height/2;
    x1 = trigger.x - halflength;
    y1 = trigger.y + halfheight;
    x2 = trigger.x + halflength;
    y2 = trigger.y - halfheight;
    obj = argument1;
    prec = argument2;
    notme = argument3;
    dsid = ds_list_create();
    //draw_rectangle(x1, y1, x2, y2, false);
    with (obj) {
        if (!notme || id != other.id) {
            i = collision_rectangle(x1,y1,x2,y2,id,prec,false);
            if (i != noone) ds_list_add(dsid,i);
        }
    }
    if (ds_list_empty(dsid)) {
        ds_list_destroy(dsid);
        dsid = noone;
    }
    return dsid;
}
