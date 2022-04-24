## Create Custom ROS Package  Example_01##

![Create Custom ROS Package](https://user-images.githubusercontent.com/28452932/164990781-f676dec0-98bd-451f-ba3b-94aa652e2172.png)

#### Start ROSCORE
```bash
$ roscore
```

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
$ source ./devel/setup.bash 
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
---

## Create Custom ROS Package  Example_02##
![Publisher and Subscriber](https://user-images.githubusercontent.com/28452932/164991378-2750988f-e94c-4dcb-98a4-b8d9867d5cb7.png)

#### Run the publisher node
```bash
$ rosrun turtlesim publisher.py  
```

#### Run our subscriber node 
```bash
$ rosrun messi_turtle_pkg subscriber.py 
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```


## Create Custom ROS Package - User Input  Example_03##
![input_user](https://user-images.githubusercontent.com/28452932/164992341-5c246eb8-0e43-452c-af70-39605ed02f2b.png)


#### Run the turtlesim_node
```bash
$ rosrun turtlesim turtlesim_node  
```

#### Run our node messi_turtle_pkg
```bash
$ rosrun messi_turtle_pkg input_user.py
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
