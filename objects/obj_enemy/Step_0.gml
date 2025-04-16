

//Horizontal collision
if (place_meeting(x + speed, y, obj_wall)) {
	while (!place_meeting(x + sign(speed), y, obj_wall)) {
		x += sign(speed);
	}
	speed *= -1;
}
//Animation
if (place_meeting(x, y + 1, obj_wall)) {
	sprite_index = spr_enemy_jump;
	image_speed = 0;
	if (vsp > 0) {
		vsp = -jumpsp;
		currjumps += 1;
		image_index = 2;
	} else if (vsp == 0) {
		image_index = 1;	
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (speed == 0) {
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemy_run;
	}
}
 
//Calc movoment vertical
var grv_final = grv;
if (on_wall != 0) && (vsp > 0) && (key_left != 0 || key_right != 0) {
	grv_final = grv_wall;
}
vsp += grv_final;

//Vertical collision
if (place_meeting(x, y + vsp, obj_wall)) {
	while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}

vsp = clamp(vsp, -12, 20);
y += vsp;

if(speed != 0) {
	image_xscale = sign(speed);
}
