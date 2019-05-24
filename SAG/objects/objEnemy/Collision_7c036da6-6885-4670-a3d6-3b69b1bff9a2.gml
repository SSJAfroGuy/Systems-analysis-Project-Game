enemyHealth -= 1; //this will change maybe? this takes HP off but means an extra code for ALL bullet types
//Destroys the enemy object - not the bullet (This is so some bullets can have a pierce effect)
	with(objBullet_GunTest.id)
	{
		instance_destroy();
	}