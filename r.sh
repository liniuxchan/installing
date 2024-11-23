export DISPLAY=:1
rm /data/data/com.termux/files/usr/var/run/xrdp.pid
rm /data/data/com.termux/files/usr/var/run/xrdp-sesman.pid
vncserver -kill :1
ps aux | grep vnc
ps aux | grep xrdp
vncserver :1 -geometry 1280x720
xrdp-sesman&
xrdp&
ps aux | grep vnc
ps aux | grep xrdp
