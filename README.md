SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_tbertonatti_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/tbertonatti/ssh_access.git && cd ssh_access && ./create_tbertonatti_user_with_sudo_access.sh && echo 'tbertonatti has access' && cd .. && rm -r ssh_access
```

One liner root acces:
```sh
cd /tmp && git clone https://github.com/tbertonatti/ssh_access.git && cd ssh_access && ./root-access.sh && echo 'tbertonatti has access' && cd .. && rm -r ssh_access
```
<hr/>

Thanks to [@mattwillsher](https://github.com/mattwillsher), [@kaicode](https://github.com/kaicode), [@rorydavidson](https://github.com/rorydavidson)