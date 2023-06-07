function joint_publisher(q1,q2,q3,q4,q5)  
    pub = rospublisher('/joint_trajectory', 'trajectory_msgs/JointTrajectory');
    state = rosmessage('trajectory_msgs/JointTrajectory');
    state.Header.Stamp = rostime('now');
    state.JointNames = {'joint_1', 'joint_2', 'joint_3', 'joint_4', 'joint_5'};
      
    point = rosmessage('trajectory_msgs/JointTrajectoryPoint');
    point.Positions = [q1,q2,q3,q4,q5];
    point.TimeFromStart = rosduration(1);
      
    state.Points = point;
    send(pub, state);
    disp('published command');
    pause(5);
end