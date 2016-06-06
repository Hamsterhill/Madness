// Checks number of controllers attached, If less then 4 asks if you would like to continue or connect more. 
gp_numConnected=0
var gp_numSlots = gamepad_get_device_count();
for (var i = 0; i < gp_numSlots; i++;)
   {
   if gamepad_is_connected(i) {global.gp[i] = true; gp_numConnected+=1} else global.gp[i] = false;
   }
if gp_numConnected<4{
    var i = false;
    i = show_question("only " + string(gp_numConnected) + " Have been connected. This game was designed for 4 gamepads do you wish to continue anyway? (or connect more controllers and click no to try again)")
    if i = false room_restart();
    }
