vncserver -kill :1
rm /data/data/com.termux/files/usr/var/run/xrdp.pid
rm /data/data/com.termux/files/usr/var/run/xrdp-sesman.pid
vncserver :1 -geometry 1280x720
export DISPLAY=:1
xrdp&
xrdp-sesman&
