/* 
This object controls and manages all the particle systems used within the game
These are resource intensive if used incorectly and MUST be cleared upon the game shutting down)
*/

//Name of the particle system
Bullet = part_system_create_layer("TopParticleLayer", true);

//Name of the particle type
Bullet_Trail = part_type_create();
part_type_shape(Bullet_Trail,pt_shape_circle);
part_type_size(Bullet_Trail,0.19,0.24,0,0);
part_type_scale(Bullet_Trail,1,2.02);
part_type_color3(Bullet_Trail,8830131,12982787,9898056);
part_type_alpha3(Bullet_Trail,0.75,0.67,0.07);
part_type_speed(Bullet_Trail,0,0,0,0);
part_type_direction(Bullet_Trail,180,180,0,0);
part_type_blend(Bullet_Trail,1);
part_type_life(Bullet_Trail,5,9);

//Melias Magic orb particle effect
Melia_Orb = part_type_create();
part_type_sprite(Melia_Orb,sprPlayerUp,0,0,0);
part_type_size(Melia_Orb,1,1,0,0);
part_type_scale(Melia_Orb,1,1);
part_type_color2(Melia_Orb,16079551,16711808);
part_type_alpha1(Melia_Orb,1);
part_type_speed(Melia_Orb,0.50,1,0.01,0);
part_type_direction(Melia_Orb,0,359,0,0);
part_type_gravity(Melia_Orb,0,270);
part_type_orientation(Melia_Orb,0,0,0,0,1);
part_type_blend(Melia_Orb,1);
part_type_life(Melia_Orb,30,60);

//SlimebulletsExpldde
SlimeSplosion = part_type_create();
part_type_shape(SlimeSplosion,pt_shape_flare);
part_type_size(SlimeSplosion,0.10,0.56,0,0);
part_type_scale(SlimeSplosion,3.18,1.80);
part_type_color1(SlimeSplosion,65280);
part_type_alpha3(SlimeSplosion,0.90,0.75,0.06);
part_type_speed(SlimeSplosion,1.12,4.43,-0.03,0);
part_type_direction(SlimeSplosion,0,359,-1,0);
part_type_gravity(SlimeSplosion,0,270);
part_type_orientation(SlimeSplosion,0,0,0,0,1);
part_type_blend(SlimeSplosion,1);
part_type_life(SlimeSplosion,67,72);