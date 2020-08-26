# Surface Pro 6 CPU Policy

Surface Pro 6 CPU Policy is a CPU power mode control service with a simple temperature reduction function

### Build dependencies
* cmake
* python3

### Debian based distro for lazy guy (by CMake)

```shell
$ ./fast-build.sh
$ cd build
$ sudo dpkg -i surface-cpu-policy-1.0.0-Linux.deb

$ systemctl status surface
● surface.service - Surface Pro 6 CPU Policy
   Loaded: loaded (/etc/systemd/system/surface.service; enabled; vendor preset: enabled)
   Active: active (running) since Tue 2020-08-25 21:40:28 CST; 18h ago
 Main PID: 3007 (policy.py)
    Tasks: 2 (limit: 4915)
   Memory: 13.5M
   CGroup: /system.slice/surface.service
           └─3007 /usr/bin/python3 /usr/lib/x86_64-linux-gnu/surface-cpu-policy/policy.py

```

