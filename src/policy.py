#!/usr/bin/python3

import os
import time

while True:
    if os.popen("cat /sys/devices/system/cpu/cpufreq/policy0/energy_performance_preference").read()[0:len("performance")] == "performance":
        # print("执行...")
        for i in range(8):
            # os.system("echo \"balance_performance\" >  /sys/devices/system/cpu/cpufreq/policy"+str(0)+"/energy_performance_preference")
            os.system("echo \"balance_performance\" >  /sys/devices/system/cpu/cpufreq/policy"+str(i)+"/energy_performance_preference")
            os.system("echo \"powersave\" >  /sys/devices/system/cpu/cpufreq/policy"+str(i)+"/scaling_governor")
    time.sleep(60)


# 节能性能的偏好：默认，性能模式，平衡性能模式，平衡功率模式，功率模式
# energy_performance_preference: default performance balance_performance balance_power power

# 缩放调节：性能，省电
# scaling_governor: performance powersave

# 
# for i in `seq 0 7`;
# do    
#     echo "balance_performance" >  /sys/devices/system/cpu/cpufreq/policy${i}/energy_performance_preference;
#     echo "powersave" >  /sys/devices/system/cpu/cpufreq/policy${i}/scaling_governor;
# done

