export DISPLAY=:1
vncserver -kill :1
rm /data/data/com.termux/files/usr/var/run/xrdp.pid
rm /data/data/com.termux/files/usr/var/run/xrdp-sesman.pid
vncserver :1 -geometry 1280x720
xrdp&
xrdp-sesman&
ps aux | grep vnc
ps aux | grep xrdp
