echo "Hi! I'm Liniux-chan."
pkg update && pkg upgrade -y
pkg install x11-repo
pkg install tigervnc -y
vncpasswd
vncserver :1 -geometory 1280x720
