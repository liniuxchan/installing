export DISPLAY=:1
pkill xrdp
pkill xrdp-sessman
pkill vnc
ps aux | grep vnc
ps aux | grep xrdp
vncserver :1 -geometry 1280x720
xrdp-sesman&
xrdp&
ps aux | grep vnc
ps aux | grep xrdp
