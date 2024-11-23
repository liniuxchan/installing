echo "Hi! I'm Liniux-chan."
read -sp "🩷Enter your password:" password
echo
pkg update && pkg upgrade -y
pkg install x11-repo
pkg install tigervnc -y
vncpasswd <<EOF
$password
$password
n
EOF
vncserver :1 -geometry 1280x720

