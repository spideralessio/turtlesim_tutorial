#include <ros/ros.h>
#include <turtlesim/Pose.h>
#include <turtlesim/Color.h>
#include <turtlesim/GetCircles.h>
#include <turtlesim/RemoveCircle.h>
#include <unistd.h>
#include <math.h>  

turtlesim::Color savedColor;
ros::ServiceClient getCirclesClient;
ros::ServiceClient removeCircleClient;
void poseCallback(const turtlesim::PoseConstPtr& pose) {
	//SE IL COLORE è ROSSO #ff0000
	if (savedColor.r == 0xff && savedColor.g == 0 && savedColor.b == 0){
		double distance = 0.8, x, y, calc_d;
		int id;

		turtlesim::GetCircles getCirclesService;
		
		if(getCirclesClient.call(getCirclesService)){
			
			//CERCA IL CERCHIO PIU VICINO
			for(int i = 0; i<getCirclesService.response.circles.size();i++){
				x = getCirclesService.response.circles[i].x;
				y = getCirclesService.response.circles[i].y;
				calc_d = sqrt( pow(((*pose).x-x),2) + pow(((*pose).y-y),2)  );
				if(calc_d<=distance) {
					id = getCirclesService.response.circles[i].id;
					distance = calc_d;
				}
			}

			//RIMUOVE IL CERCHIO
			turtlesim::RemoveCircle removeCircleService;
			removeCircleService.request.id = id;
			removeCircleClient.call(removeCircleService);

			savedColor.r = 0x45;
			savedColor.g = 0x56;
			savedColor.b = 0xff;
		}
	}
}


void colorCallback(const turtlesim::ColorConstPtr& color) {
  	//SALVA IL COLORE
	savedColor = *color;
}

int main(int argc, char** argv) {
	//INIZIALIZZA IL NODO
	ros::init(argc, argv, "tutorial_delete_circle_node");
	ros::NodeHandle nh;

	//SI COLLEGA AL TOPIC Color
	ros::Subscriber sub_color = nh.subscribe<turtlesim::Color>("/turtle1/color_sensor", 1000, colorCallback);
	//SI COLLEGA AL TOPIC Pose
	ros::Subscriber sub_pose = nh.subscribe<turtlesim::Pose>("/turtle1/pose", 1000, poseCallback);
	//SI COLLEGA AL SERVICE GetCircles
	getCirclesClient =  nh.serviceClient<turtlesim::GetCircles>("/getCircles");
	//SI COLLEGA AL SERVICE RemoveCircle
	removeCircleClient =  nh.serviceClient<turtlesim::RemoveCircle>("/removeCircle");

	//LANCIA I CALLBACKS
	ros::spin();
}
