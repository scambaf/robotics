

#include <ros/ros.h>
#include <ros/callback_queue.h>
#include "sensor_msgs/LaserScan.h"
#include "geometry_msgs/PoseStamped.h"
#include "sensor_msgs/Imu.h"
#include "std_msgs/String.h"
#include "silop/ImuData.h"
#include <sstream>
#include <iostream>
#include <fstream>
using namespace std;

const int MAX_VENTANA = 1000;

class Captura
{
	ros::NodeHandle * nh_;
	ros::Publisher pub_;

public:

	/////// VARIABLES ///////

	double freq=100;
	double time_init=-1;

	double sync_time[MAX_VENTANA];

	// SICK
	double sick_time[MAX_VENTANA];
	double sick_data[181*MAX_VENTANA];

	double sick_time_s[MAX_VENTANA];
	double sick_data_s[181*MAX_VENTANA];
	
	ofstream sick_fs;

	// CAMARAS 1
	double cam1_time[MAX_VENTANA];
	double cam1_data[8*MAX_VENTANA];//15 -> 3 coordenadas * 5 camaras

	double cam1_time_s[MAX_VENTANA];
	double cam1_data_s[8*MAX_VENTANA];
	
	ofstream cam1_fs;

	// CAMARAS 2
	double cam2_time[MAX_VENTANA];
	double cam2_data[8*MAX_VENTANA];//15 -> 3 coordenadas * 5 camaras

	double cam2_time_s[MAX_VENTANA];
	double cam2_data_s[8*MAX_VENTANA];
	
	ofstream cam2_fs;

	// SHIMMER BFED
	double shimmerBF_time[MAX_VENTANA];
	double shimmerBF_data[9*MAX_VENTANA];

	double shimmerBF_time_s[MAX_VENTANA];
	double shimmerBF_data_s[9*MAX_VENTANA];

	ofstream shimmerBF_fs;

	//SHIMMER D54E
	double shimmerD5_time[MAX_VENTANA];
	double shimmerD5_data[9*MAX_VENTANA];

	double shimmerD5_time_s[MAX_VENTANA];
	double shimmerD5_data_s[9*MAX_VENTANA];
	
	ofstream shimmerD5_fs;

	//SHIMMER BAD7
	double shimmerBA_time[MAX_VENTANA];
	double shimmerBA_data[9*MAX_VENTANA];

	double shimmerBA_time_s[MAX_VENTANA];
	double shimmerBA_data_s[9*MAX_VENTANA];
	
	ofstream shimmerBA_fs;



	/////// METODOS ///////

  	Captura(ros::NodeHandle * nh);
	virtual ~Captura();

	void sick_Callback(const sensor_msgs::LaserScan::ConstPtr& msg);

	void cam_Callback(const geometry_msgs::PoseStamped::ConstPtr& msg);

	void shimmer_Callback(const silop::ImuData::ConstPtr& msg);

	double* desplazarMatrices(double *v, double *p, int F, int C, int pos);

};
