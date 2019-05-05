//see if a list is needed
var triggers = collision_in_rectangle_list(self, key, false, true);
var activate = false;
if(triggers != noone){
    for(var i = 0; i < ds_list_size(triggers); i++){
        if(ds_list_find_value(triggers, i).exists){
            activate = true;
            break;
        }
    }    
}

if(activate) on = true;
else on = false;

if(triggers != noone)ds_list_destroy(triggers)
