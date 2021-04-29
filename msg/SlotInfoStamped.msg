# 本消息格式使用两个长方形表示库位两侧的障碍车
# 长方形障碍车的表示方式为其关键角点（靠近库位侧且靠近马路通道测的角点）的坐标、车辆角度和两个带正负号的延伸长度(其绝对值表示障碍车辆长宽)
# geometry_msgs/Pose2D格式包含一个组坐标(x,y)和角度yaw，表示障碍车辆的角点位置和角度，另外三个角点的计算方法如下
# 记三个向量a,b,c，它们表示另外三个角点在障碍车自身坐标系下的位置,用齐次坐标表示(增加一个维度，恒为1,例如坐标[x;y]的齐次坐标为[x;y;1])
# 记二维刚体变换矩阵T，它可以根据geometry_msgs/Pose2D格式中的(x,y)和角度yaw计算
# 则角点a,b,c在全局坐标系下的坐标为T*a,T*b,T*c
# 以参考车（ref_pose）的另外三个角点的计算为例
# 其中
#    a=[ref_extend_x; 
#                  0;
#                  1]，

#    b=[           0;
#       ref_extend_y;
#                  1],

#    c=[ref_extend_x;
#       ref_extend_y;
#                  1]

# T = [cos(yaw), -sin(yaw), x; 
#      sin(yaw),  cos(yaw), y;
#             0,         0, 1], 其中的x,y,yaw从ref_pose中获取

# ros标准数据头
std_msgs/Header header

# 参考车的长方形表示
geometry_msgs/Pose2D ref_pose
float64 ref_extend_x
float64 ref_extend_y

# 障碍车的长方形表示i
geometry_msgs/Pose2D obstacle_pose
float64 obstacle_extend_x
float64 obstacle_extend_y

# 库位宽度(m)
float64 slot_width