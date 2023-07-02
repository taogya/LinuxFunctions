# LinuxFunctions
My functions for Linux.  
This functions is installed to `/usr/local/sbin` by default.

# Installation
```sh
git clone https://github.com/taogya/LinuxFunctions.git
cd LinuxFunctions
chmod +x install.sh
sudo sh install.sh
```

# Functions
- [header](functions/header)  
echo message for header
```sh
$ header "message "
message ========================================================================
$ header "message " "=-" 20
message =-=-=-=-=-=-
```

- [is_root](functions/is_root)  
check if now user is root
```sh
$ is_root
not root.
$ sudo -i is_root
```

- [valid_network](functions/valid_network)  
check if can access internet
```sh
# ng
$ valid_network
can not access to internet.
# ok
$ valid_network
```
