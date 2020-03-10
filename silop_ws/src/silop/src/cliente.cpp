#include "ros/ros.h"
//#include "geometry_msgs/Twist.h"
//#include "sensor_msgs/LaserScan.h"
#include "std_msgs/String.h"

//#include <cstdlib> 
//#include <ctime> 
#include <sstream>


void chatterCallback(const sensor_msgs::LaserScan::ConstPtr& msg)
{
/*
	int totalValues = ceil((msg->angle_max-msg->angle_min)/msg->angle_increment); 
	for (int i=0; i< totalValues; i++) {
		ROS_INFO_STREAM("Values[" << i << "]:" << msg->ranges[i]); 
	}
*/
	
	std_msgs::Header h = msg->header;
	//ROS_INFO_STREAM("time: " << .shtamp); // timestamp de cuando se publico el mensaje	
		std_msgs::String msg;
	 
		std::stringstream ss;
		ss << "hello world ";
		msg.data = ss.str();

		ROS_INFO("%s", msg.data.c_str());
		pub.publish(msg);


	
}

int main(int argc, char **argv)
{
	//ROS_INFO("hola");
 
	ros::init(argc, argv, "cliente");

	ros::NodeHandle n;
	

	ros::Subscriber sub = n.subscribe("scan", 1000, chatterCallback);

	ros::Publisher pub = n.advertise<std_msgs::String>("prueba", 1000);
	ros::Rate loop_rate(10);

/*
	int count = 0;
	while (ros::ok())
	{
		std_msgs::String msg;
	 
		std::stringstream ss;
		ss << "hello world ";
		msg.data = ss.str();

		ROS_INFO("%s", msg.data.c_str());
		pub.publish(msg);

		//ros::spin();

		loop_rate.sleep();
		++count;
	}
*/
	return 0;
}
