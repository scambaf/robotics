
#include "Captura.h"


Captura::Captura(ros::NodeHandle * nh)
{
  nh_ = nh;
  //pub_ = nh_->advertise<std_msgs::String>("captura", 1000);
  
  //cam1_fs.open ("CAM1.txt");
  //cam2_fs.open ("CAM2.txt");
  //cam1_fs.open ("CAM.txt");
  //cam1_fs.open ("CAM.txt");
  //cam1_fs.open ("CAM.txt");
  //shimmerBF_fs.open ("shimmerSICK.txt");
  //shimmerBF_fs.open ("shimmerBF.txt");
  //shimmerD5_fs.open ("shimmerD5.txt");
  //shimmerBA_fs.open ("shimmerBA.txt");
}

Captura::~Captura()
{
  //delete nh_;
}

double* Captura::desplazarMatrices(double *v, double *p, int F, int C, int pos)
{
	for (int f=(F*C-1); f>(pos+1)*C-1;f--)
	{	
		v[f]=v[f-C];
	}
	
	for (int c=pos*C;c<pos*C+C;c++)
	{
		v[c]=p[c];
	}
	
	return v;

}


///////////////////////////

void Captura::sick_Callback(const sensor_msgs::LaserScan::ConstPtr& msg)
{
	std_msgs::Header h = msg->header;
	double time =h.stamp.toSec();

	double rangos [181];

	for (int j=0;j<181;j++){

		rangos[j]=msg->ranges[j];
	}
	

	//sincronizados
	double rangos_s[181];

	if (time_init==-1){
		sick_fs.open ("SICK");
		time_init=time;	
		sick_time_s[0]=time;
		desplazarMatrices(sick_data_s,&rangos[0], MAX_VENTANA,181,0);//msg->range_max

	}else if(time_init!=-1 && sick_time_s[0]==0){
		sick_fs.open ("SICK");
		int count=0;
		while(time>sick_time_s[0]){

			double time_s= sick_time_s[0]+1/freq;
			desplazarMatrices(sick_time_s,&time_s, MAX_VENTANA,1,0);
			count++;

		}
		
		for (int i=count-1;i>=0;i--)
		{
			desplazarMatrices(sick_data_s,&rangos[0], MAX_VENTANA,181,0);//msg->range_max

		}

	}else{
		
		int count=0;
		while(time>sick_time_s[0]){

			double time_s= sick_time_s[0]+1/freq;
			desplazarMatrices(sick_time_s,&time_s, MAX_VENTANA,1,0);
			count++;

		}
		
		for (int i=count-1;i>=0;i--)
		{
			for (int j=0;j<181;j++){

				rangos_s[j]=sick_data_s[j]+(sick_time_s[i]-sick_time_s[i+1])*(rangos[j]-sick_data_s[j])/(time-sick_time_s[i+1]);
			}

			desplazarMatrices(sick_data_s,&rangos_s[0], MAX_VENTANA,181,0);//msg->range_max

		}
	}

	// sin sincronizar
	desplazarMatrices(sick_data,&rangos[0], MAX_VENTANA,181,0);//msg->range_max

	desplazarMatrices(sick_time,&time, MAX_VENTANA,1,0);
	
	sick_fs << time << setprecision(16);	
	for (int j=0;j<181;j++){
		sick_fs << "\t" << rangos[j];
	}
	sick_fs << endl;
}



void Captura::cam_Callback(const geometry_msgs::PoseStamped::ConstPtr& msg)
{
	std_msgs::Header h = msg->header;
	double time =h.stamp.toSec();
	
	string frame_id = h.frame_id;  
	
	double* cam_time;
	double* cam_data;
	double* cam_time_s;
	double* cam_data_s;
	ofstream* cam_fs;

	
	if (frame_id=="RB1"){
		
		cam_time=cam1_time;
		cam_data=cam1_data;
		cam_time_s=cam1_time_s;
		cam_data_s=cam1_data_s;
		cam_fs=&cam1_fs;

	}else if (frame_id=="RB2"){
		cam_time=cam2_time;
		cam_data=cam2_data;
		cam_time_s=cam2_time_s;
		cam_data_s=cam2_data_s;
		cam_fs=&cam2_fs;
	}

	//ROS_INFO("%s",frame_id.c_str());

	double pose[7];

	geometry_msgs::Pose position =msg->pose;
	pose[0]=position.position.x;
	pose[1]=position.position.y;
	pose[2]=position.position.z;
	
	pose[3]=position.orientation.x;
	pose[4]=position.orientation.y;
	pose[5]=position.orientation.z;
	pose[6]=position.orientation.w;

	int posicion=0;
	

	//sincronizados

	double pose_s[7];

	if (time_init==-1){
		
		cam_fs->open(frame_id.c_str());
		time_init=time;	
		cam_time_s[0]=time;
		desplazarMatrices(cam_data_s,&pose[0], MAX_VENTANA,3,posicion);
		/**cam_fs << time << setprecision(16) << "\t" << pose[0] << "\t";
		*cam_fs << pose[1] << "\t" << pose[2]<< "\t" << pose[3] << "\t";
		*cam_fs << pose[4] << "\t" << pose[5] << "\t" << pose[6] <<  endl;*/

	}else if(time_init!=-1 && cam_time_s[0]==0){
		cam_fs->open(frame_id.c_str());

		int count=0;
		cam_time_s[0]=time_init;

		while(time>cam_time_s[0]){

			double time_s= cam_time_s[0]+1/freq;
			desplazarMatrices(cam_time_s,&time_s, MAX_VENTANA,1,posicion);
			/**cam_fs << time_s << setprecision(16) << "\t" << pose[0] << "\t";
			*cam_fs << pose[1] << "\t" << pose[2]<< "\t" << pose[3] << "\t";
			*cam_fs << pose[4] << "\t" << pose[5] << "\t" << pose[6] <<  endl;*/
			count++;
			

		}
		
		for (int i=count-1;i>=0;i--)
		{
			desplazarMatrices(cam_data_s,&pose[0], MAX_VENTANA,3,posicion);

		}

	}else{
		
		int count=0;
		double time_s;
		while(time>cam_time_s[0]){

			time_s= cam_time_s[0]+1/freq;
			desplazarMatrices(cam_time_s,&time_s, MAX_VENTANA,1,posicion);
			count++;

		}
			
		for (int i=count-1;i>=0;i--)
		{
			for (int j=0;j<3;j++){
				pose_s[j]=cam_data_s[0]+(cam_time_s[i]-cam_time_s[i+1])*(pose[j]-cam_data_s[0])/(time-cam_time_s[i+1]);
				
			}
			desplazarMatrices(cam_data_s,&pose_s[0], MAX_VENTANA,3,posicion);
			/**cam_fs << cam_time_s[i] << setprecision(16) << "\t" << pose_s[0] << "\t";
			*cam_fs << pose_s[1] << "\t" << pose_s[2] << "\t"  << pose_s[3] << "\t";
			*cam_fs << pose_s[4] << "\t" << pose_s[5] << "\t" << pose_s[6]<< endl;*/

		}
	}

	

	// sin sincronizar

	desplazarMatrices(cam_data,&pose[0], MAX_VENTANA,3,posicion);

	desplazarMatrices(cam_time,&time, MAX_VENTANA,1,posicion);

	*cam_fs << time << setprecision(16) << "\t" << pose[0] << "\t";
	*cam_fs << pose[1] << "\t" << pose[2]<< "\t" << pose[3] << "\t";
	*cam_fs << pose[4] << "\t" << pose[5] << "\t" << pose[6] <<  endl;


	
	
	
}

void Captura::shimmer_Callback(const silop::ImuData::ConstPtr& msg)
{
	std_msgs::Header h = msg->header;
	double time =h.stamp.toSec();
	
	string frame_id = h.frame_id;  
	
	double* shimmer_time;
	double* shimmer_data;
	double* shimmer_time_s;
	double* shimmer_data_s;
	ofstream* shimmer_fs;

	
	if (frame_id=="BFED"){
		
		shimmer_time=shimmerBF_time;
		shimmer_data=shimmerBF_data;
		shimmer_time_s=shimmerBF_time_s;
		shimmer_data_s=shimmerBF_data_s;
		shimmer_fs=&shimmerBF_fs;

	}else if (frame_id=="D54E"){
		shimmer_time=shimmerD5_time;
		shimmer_data=shimmerD5_data;
		shimmer_time_s=shimmerD5_time_s;
		shimmer_data_s=shimmerD5_data_s;
		shimmer_fs=&shimmerD5_fs;

	}else if (frame_id=="BAD7"){
		shimmer_time=shimmerBA_time;
		shimmer_data=shimmerBA_data;
		shimmer_time_s=shimmerBA_time_s;
		shimmer_data_s=shimmerBA_data_s;
		shimmer_fs=&shimmerBA_fs;
	}

	double imu [9];

	geometry_msgs::Vector3 accel = msg->linear_acceleration;
	imu [0]=accel.x;
	imu [1]=accel.y;
	imu [2]=accel.z;
	
	geometry_msgs::Vector3 vel_ang = msg->angular_velocity;
	imu [3]=vel_ang.x;
	imu [4]=vel_ang.y;
	imu [5]=vel_ang.z;
	
	geometry_msgs::Vector3 mag = msg->magnetic_field;
	imu [6]=mag.x;
	imu [7]=mag.y;
	imu [8]=mag.z;
	
	

	//sincronizados
	double imu_s[9];

	if (time_init==-1){
		shimmer_fs->open(frame_id.c_str());
		time_init=time;	
		shimmer_time_s[0]=time;
		desplazarMatrices(shimmer_data_s,&imu[0], MAX_VENTANA,9,0);
		/**shimmer_fs << time << setprecision(16) << "\t" << imu[0] << "\t" <<imu[1] << "\t" <<imu[2];
 		*shimmer_fs << "\t" <<imu[3] << "\t" <<imu[4] << "\t" <<imu[5];
		*shimmer_fs << "\t" <<imu[6] << "\t" <<imu[7] << "\t" <<imu[8] << endl;*/

	}else if(time_init!=-1 && shimmer_time_s[0]==0){
		shimmer_fs->open(frame_id.c_str());
		int count=0;
		shimmer_time_s[0]=time_init;

		while(time>shimmer_time_s[0]){
			double time_s= shimmer_time_s[0]+1/freq;
			desplazarMatrices(shimmer_time_s,&time_s, MAX_VENTANA,1,0);
			count++;
			/**shimmer_fs << time_s << setprecision(16) << "\t" << imu[0] << "\t" <<imu[1] << "\t" <<imu[2];
 			*shimmer_fs << "\t" <<imu[3] << "\t" <<imu[4] << "\t" <<imu[5];
			*shimmer_fs << "\t" <<imu[6] << "\t" <<imu[7] << "\t" <<imu[8] << endl;*/
		}
		for (int i=count-1;i>=0;i--)
		{
			desplazarMatrices(shimmer_data_s,&imu[0], MAX_VENTANA,9,0);

		}
		
	}else{
		
		int count=0;
		while(time>shimmer_time_s[0]){

			double time_s= shimmer_time_s[0]+1/freq;
			desplazarMatrices(shimmer_time_s,&time_s, MAX_VENTANA,1,0);
			count++;

		}
		for (int i=count-1;i>=0;i--)
		{		
			for (int j=0;j<9;j++){

				imu_s[j]=shimmer_data_s[j]+(shimmer_time_s[i]-shimmer_time_s[i+1])*(imu[j]-shimmer_data_s[j])/(time-shimmer_time_s[i+1]);
			}

			desplazarMatrices(shimmer_data_s,&imu_s[0], MAX_VENTANA,9,0);
			/**shimmer_fs << shimmer_time_s[i] << setprecision(16) << "\t" << imu_s[0] << "\t" <<imu_s[1] ;
 			*shimmer_fs << "\t" <<imu_s[2] << "\t" <<imu_s[3] << "\t" <<imu_s[4] << "\t" <<imu_s[5];
			*shimmer_fs << "\t" <<imu_s[6] << "\t" <<imu_s[7] << "\t" <<imu_s[8] << endl;*/

		}

	}


	// sin sincronizar
	desplazarMatrices(shimmer_data,&imu[0], MAX_VENTANA,9,0);
	desplazarMatrices(shimmer_time,&time, MAX_VENTANA,1,0);

	*shimmer_fs << time << setprecision(16) << "\t" << imu[0] << "\t" <<imu[1] << "\t" <<imu[2];
 	*shimmer_fs << "\t" <<imu[3] << "\t" <<imu[4] << "\t" <<imu[5];
	*shimmer_fs << "\t" <<imu[6] << "\t" <<imu[7] << "\t" <<imu[8] << endl;

	
}


////////////////////////////

int main(int argc, char **argv)
{
	ros::init(argc, argv, "Captura");
  	ros::NodeHandle nh;

	ros::CallbackQueue my_callback_queue;
	nh.setCallbackQueue(&my_callback_queue);
	my_callback_queue.callAvailable(ros::WallDuration());

	Captura captura(&nh); 
	
	ros::Subscriber sick_sub = nh.subscribe("scan", 1000, &Captura::sick_Callback,&captura);
	ros::Subscriber cam1_sub = nh.subscribe("vrpn_client_node/RB1/pose", 1000, &Captura::cam_Callback,	&captura);
	ros::Subscriber cam2_sub = nh.subscribe("vrpn_client_node/RB2/pose", 1000, &Captura::cam_Callback,	&captura);
	//ros::Subscriber cam3_sub = nh.subscribe("vrpn_client_node/RB3/pose", 1000, &Captura::cam_Callback,	&captura);
	//ros::Subscriber cam4_sub = nh.subscribe("vrpn_client_node/RB4/pose", 1000, &Captura::cam_Callback,	&captura);
	//ros::Subscriber cam5_sub = nh.subscribe("vrpn_client_node/RB5/pose", 1000, &Captura::cam_Callback,	&captura);

	ros::Subscriber shimmerBF_sub = nh.subscribe("BFED/imu", 1000, &Captura::shimmer_Callback,	&captura);
 	ros::Subscriber shimmerD5_sub = nh.subscribe("D54E/imu", 1000, &Captura::shimmer_Callback,	&captura);	
 	ros::Subscriber shimmerBA_sub = nh.subscribe("BAD7/imu", 1000, &Captura::shimmer_Callback,	&captura);

	//ros::Publisher pub = nh.advertise<std_msgs::String>("prueba", 1000);
	//ros::Publisher pub = nh.advertise<sensor_msgs::LaserScan>("prueba", 1000);

	ros::Rate loop_rate(100);


	/*
	unsigned int num_readings = 181;
        double laser_frequency = 50;
        double ranges[num_readings];
        double intensities[num_readings];
  
	int count = 0;
	*/
  
	while (ros::ok())
	{
	     
	     /*std_msgs::String msg;
	 	
	     std::ostringstream ss;
  	     //ROS_INFO("se recibe: %0.16f", captura.cam_data[0]);
	     ss << std::fixed << std::setprecision(16) << captura.cam_data[0];
	     msg.data = ss.str();
	 
	     //ROS_INFO("se envia: %s", msg.data.c_str());*/



		  //generate some fake data for our laser scan
		/*
		      for(unsigned int i = 0; i < num_readings; ++i){
			ranges[i] = captura.sick_data_s[i];
			//ROS_INFO("sick_data: %0.8f",captura.sick_data[i]);
			//intensities[i] = 100 + count;
		      }

		      ros::Time scan_time = ros::Time::now();
		  
		      //populate the LaserScan message
		      sensor_msgs::LaserScan scan;
		      scan.header.stamp = scan_time;
		      scan.header.frame_id = "laser";
		      scan.angle_min = -1.57;
		      scan.angle_max = 1.57;
		      scan.angle_increment = 3.14 / num_readings;
		      scan.time_increment = 3.70370362361e-05;//(1 / laser_frequency) / (num_readings);
		      scan.range_min = 0.0;
		      scan.range_max = 8.10000038147;
		  
		      scan.ranges.resize(num_readings);
		      scan.intensities.resize(num_readings);
		      for(unsigned int i = 0; i < num_readings; ++i){
			scan.ranges[i] = ranges[i];
			scan.intensities[i] = intensities[i];
		 	}
			 

			     pub.publish(scan);*/

			 //ros::AsyncSpinner spinner(0, &my_callback_queue);
		  	 //spinner.start();



	     my_callback_queue.callAvailable(ros::WallDuration());
	     ros::spinOnce();
	 
	     loop_rate.sleep();

	}


	return 0;
}
