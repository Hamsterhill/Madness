//draw legs
if sped=0{
draw_sprite_ext(spr_playerLegs,0,x,y,1,1,moveDirection,c_white,1)
legImageIndex=0
}else{
legImageIndex+=legImageSpeed
if legImageIndex > 5 legImageIndex-=5
draw_sprite_ext(spr_playerLegs,floor(legImageIndex)+1,x,y,1,1,moveDirection,c_white,1)
}
//draw_torso
draw_sprite_ext(spr_playerTorso,weaponHand[weapon],x,y,1,1,aimDirection,c_white,1)
//draw_gun
var dir, dist;
dir= point_direction(0,0,o_control.xx,o_control.yy)
dist= point_distance(0,0,o_control.xx,o_control.yy)
draw_sprite_ext(spr_playerWeapons,o_control.xx,x,y,1,1,aimDirection,c_white,1)

//Test draw bullet
//draw_circle_color(x+lengthdir_x(weaponEndDist[weapon],aimDirection + weaponEndDir[weapon]),y+lengthdir_y(weaponEndDist[weapon],aimDirection + weaponEndDir[weapon]),1,c_fuchsia,c_fuchsia,0)
