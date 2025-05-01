var inst = instance_create_layer(x - 24,y - 24, "Instances", obj_boss_bullets);
inst.direction = point_direction(x,y,obj_player.x, obj_player.y);
alarm[0] = room_speed * 2;