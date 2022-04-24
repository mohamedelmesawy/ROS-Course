## Create Custom ROS Package ##

![Create Custom ROS Package](https://user-images.githubusercontent.com/28452932/164990781-f676dec0-98bd-451f-ba3b-94aa652e2172.png)


#### Create/Initialize Workspace
```bash
$ mkdir messi_ws
$ cd messi_ws
$ mkdir src
$ cd src/
$ catkin_init_workspace 
```

#### Build 
```bash
$ cd ..
$ catkin_make
```

```bash
$ cd src/
$ catkin_create_pkg messi_turtle_pkg rospy geometry_msgs 
```

#### Build 
```bash
$ cd ..
$ catkin_make
```

#### Create scripts and the python file 
```bash
$ cd messi_turtle_pkg/
$ mkdir scripts

$ cd scripts
$ touch move_turtelsim.py; chmod +x *
```


#### Run the turtlesim_node
```bash
$ rosrun turtlesim turtlesim_node  
```

#### Run our node messi_turtle_pkg
```bash
$ rosrun messi_turtle_pkg move_turtelsim.py 
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```

