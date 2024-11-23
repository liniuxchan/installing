export DISPLAY=:1
#pkill xrdp
#pkill xrdp-sessman
echo "kill xrdp"
ps aux | grep xrdp | grep -v grep | awk '{print $2}' | xargs kill -9
echo "kill vnc"
ps aux | grep vnc | grep -v grep | awk '{print $2}' | xargs kill -9
ps aux | grep vnc
ps aux | grep xrdp
vncserver :1 -geometry 1280x720
xrdp-sesman&
xrdp&
#ps aux | grep vnc
#ps aux | grep xrdp
