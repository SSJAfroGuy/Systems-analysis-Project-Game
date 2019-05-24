//Causes all instances within 64 pixels left, right, width and height to deactivate
//inside Whether to deactivate instances on the inside of the region (true) or the outside (false).
//notme	Whether to exclude the calling instance from deactivation (true) or not (false).

//Declares the required variables
//these values should be passed from Melia's stats (as these change with the skill tree)
show_debug_message("Time Stopped");
image_xscale = TimeStopDistance;
image_yscale = TimeStopDistance;
sprite = TimeStopCircle;
Duration = (TimeDuration + ST_Timestop_Duration); //Sets the duration for the skill
alarm_set(0, Duration);