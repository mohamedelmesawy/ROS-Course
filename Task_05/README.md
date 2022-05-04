## Create Custom ROS Package - Example_01

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

## Create Custom ROS Package - Example_02
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


## Create Custom ROS Package - User Input - Example_03
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
```


## Create publisher and subscriber to count from 0 until the user uses CTRL C - Example_04 

![publisher_counter](https://user-images.githubusercontent.com/28452932/164993408-c3ceba99-3ddd-4b06-b024-53c333b87001.png)


#### Run our node messi_turtle_pkg publisher_counter 
```bash
$ rosrun messi_turtle_pkg  publisher_counter.py 
```

#### Run our node messi_turtle_pkg subscriber
```bash
$ rosrun messi_turtle_pkg subscriber.py
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```



## Create publisher and subscriber to generate a random complex number - Example_05

![complex_number](https://user-images.githubusercontent.com/28452932/164994097-3dbe5ecf-aaaf-42cb-b0aa-1251da62d0f3.png)


#### Run our node messi_turtle_pkg publisher_complex_number 
```bash
$ rosrun messi_turtle_pkg  publisher_complex_number.py
```

#### Run our node messi_turtle_pkg subscriber
```bash
$ rosrun messi_turtle_pkg subscriber.py
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```





## Create Custom Message - Example_06
![Message](https://user-images.githubusercontent.com/28452932/166560864-1f601ba5-4152-43af-84ab-a6d2be738ffb.jpg)


#### Run our node test_pkg mypublisher.py   --> which exists in workspace other_ws
```bash
$ rosrun test_pkg mypublisher.py 
```

#### Run our node test_pkg mysubscriber.py  --> which exists in workspace other_ws
```bash
$ rosrun test_pkg mysubscriber.py
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```




## Create Custom Service - Words Counter - Example_07

![Service_words_counter](https://user-images.githubusercontent.com/28452932/166642004-795283b4-7e48-4ad6-8ae4-4dc82aea340b.jpg)

#### Run our node test_pkg count_words_server.py   --> which exists in workspace other_ws
```bash
$ rosrun test_pkg count_words_server.py
```

#### Run our node test_pkg count_words_client.py  --> which exists in workspace other_ws
```bash
$ rosrun test_pkg count_words_client.py <text>
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```


## Create Custom Service - Adding Two Numbers - Example_08

![Service](https://user-images.githubusercontent.com/28452932/166642257-b5ea5af5-bc38-4199-ad69-f7e03346d1bb.jpg)

#### Run our node test_pkg add_two_numbers_server.py   --> which exists in workspace other_ws
```bash
$ rosrun test_pkg count_words_server.py
```

#### Run our node test_pkg add_two_numbers_server.py  --> which exists in workspace other_ws
```bash
$ rosrun test_pkg add_two_numbers_client.py <num1> <num2>
```

#### Display the Graph nodes
```bash
$ rosrun rqt_graph rqt_graph 
```





