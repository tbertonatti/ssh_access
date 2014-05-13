SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_rda_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/rorydavidson/ssh_access.git && cd ssh_access && ./create_rda_user_with_sudo_access.sh && echo 'Rory has access' && cd .. && rm -r ssh_access
```
<hr/>

Thanks to [@mattwillsher](https://github.com/mattwillsher) for the idea & [@kaicode](https://github.com/kaicode) for nudging me to do it!
