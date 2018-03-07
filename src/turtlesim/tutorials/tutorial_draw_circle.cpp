#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <turtlesim/SpawnCircle.h>
#include <stdlib.h> 
#include <time.h>

#ifndef N_C
#define N_C 5
#endif
int main(int argc, char** argv) {
	srand(time(NULL));
	//PRENDE IN INPUT IL NUMERO DI CERCHI
	int N_CIRCLES;
	if (argc > 1 ) N_CIRCLES = atoi(argv[1]);
	else N_CIRCLES = N_C;
	
	//INIZIALIZZA IL NODO
	ros::init(argc, argv, "tutorial_draw_circle_node");
	ros::NodeHandle nh;
	
	//SI COLLEGA AL SERVICE SpawnCircle
	ros::ServiceClient client = nh.serviceClient<turtlesim::SpawnCircle>("/spawnCircle");
	turtlesim::SpawnCircle srv;

	//DISEGNA N_CIRCLES CERCHI
	for (int i = 0; i < N_CIRCLES; ++i)
	{
		
	 	printf("%d\n", i);
	 	
	 	//DISEGNA IL CERCHIO IN MODO RANDOMICO
	 	srv.request.x = rand() % 10 + 1;
	 	srv.request.y = rand() % 10 + 1;
	 	if (client.call(srv))
	  	{
			ROS_INFO("[tutorial_draw_circle_node] circle spawned");
	 	}
	  	else
	  	{
			ROS_ERROR("[tutorial_draw_circle_node] Failed to call service spawn_circle... Retrying...");
			i--;
	  	}
	}
	return 0;
}
