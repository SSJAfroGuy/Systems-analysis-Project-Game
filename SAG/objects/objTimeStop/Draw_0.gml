//This stuff was just me experiementing, it wasn't a good one lol
/*
srf = surface_create(100,100);  
surface_set_target(srf);  
draw_clear_alpha(c_white, 0.3);  
//draw_sprite(TimeStopCircle, 0, 0, 0)
draw_text(150, 150, "Time Stopped");
surface_reset_target();  
draw_surface(srf,x,y); 
*/
//This will draw an object fropm the players position
//This objects colours will be inverted
//The aim is to invert everything within its own view
//Make the circle appear from the center of the player
//shader_set(shader);
//shader_reset();
//gpu_set_blend_mode_ext(bm_inv_dest_color, bm_inv_src_alpha)

/*
Here is the code to cause an object to be drawn to the screen
This object has its colour and alpha inverted - this results in 2 thihngs
inverted colour - the colours/RGB are inverted giving the "stopped time" effect
Inverted alpha - the object is transparent so the pixels BEHIND it are inverted in colour
*/
gpu_set_blendmode_ext(bm_inv_dest_color, bm_inv_src_alpha); //Inverts the colour of the destination (where the object will be) Inverts the alpha of the object itself//draw_sprite(sprite, 0, x, y); //Draws a sprite...incase you're dumb :v
draw_sprite_ext(sprite, 0, x, y, TimeStopDistance, TimeStopDistance, 0, c_white, 1);