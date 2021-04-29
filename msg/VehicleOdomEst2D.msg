# ros标准数据头
std_msgs/Header header
# x坐标(m)
float64 x
# y坐标(m)
float64 y
# 横摆角(rad)
float64 yaw
# 行驶距离(m)
float64 distance

# 速度信息的时间戳，可能和header里的时间不同，速度估计有延迟
time twist_stamp
# 纵向速度（m/s）
float64 linear_speed
# 横摆角速度(rad/s)
float64 yaw_rate