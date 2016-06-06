////////////Shooting//////////////////
////aiming
    if gamepad_axis_value(player,gp_axisrh) > gp_deadZone or gamepad_axis_value(player,gp_axisrh) < -gp_deadZone or gamepad_axis_value(player,gp_axisrv) > gp_deadZone or gamepad_axis_value(player,gp_axisrv) < -gp_deadZone 
    {//if the axis vales are outside of the deadzone (used to stop gittery controllers)
    aimDirection=point_direction(0,0,gamepad_axis_value(player,gp_axisrh),gamepad_axis_value(player,gp_axisrv))
    }

////////////MOVEMENT//////////////////
////Gamepad MOVESTICK imput////
    sped=0
    if gamepad_axis_value(player,gp_axislh) > gp_deadZone or gamepad_axis_value(player,gp_axislh) < -gp_deadZone or gamepad_axis_value(player,gp_axislv) > gp_deadZone or gamepad_axis_value(player,gp_axislv) < -gp_deadZone 
    {//if the axis vales are outside of the deadzone (used to stop gittery controllers)
    sped = moveSpeed
    moveDirection=point_direction(0,0,gamepad_axis_value(player,gp_axislh),gamepad_axis_value(player,gp_axislv))
    }
////Gamepad PAD imput////
    //cardinal directions
    if gamepad_button_check(player,gp_padu) {sped = moveSpeed ;moveDirection=90}
    if gamepad_button_check(player,gp_padd) {sped = moveSpeed ;moveDirection=270}
    if gamepad_button_check(player,gp_padl) {sped = moveSpeed ;moveDirection=180}
    if gamepad_button_check(player,gp_padr) {sped = moveSpeed ;moveDirection=0}
    //angles
    if gamepad_button_check(player,gp_padu) and gamepad_button_check(player,gp_padl){sped = moveSpeed ;moveDirection=135}
    if gamepad_button_check(player,gp_padu) and gamepad_button_check(player,gp_padr){sped = moveSpeed ;moveDirection=45}
    if gamepad_button_check(player,gp_padd) and gamepad_button_check(player,gp_padl){sped = moveSpeed ;moveDirection=225}
    if gamepad_button_check(player,gp_padd) and gamepad_button_check(player,gp_padr){sped = moveSpeed ;moveDirection=315}

////Movement + collision detection
if sped<>0{
x+=lengthdir_x(sped,moveDirection)
y+=lengthdir_y(sped,moveDirection)
}

