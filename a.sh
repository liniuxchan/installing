echo "Hi! I'm Liniux-chan."
read -sp "enter password" password
echo
pkg update && pkg upgrade -y
pkg install x11-repo
pkg install tigervnc -y
vncserver :1 -geometry 1280x720 <<EOF
$password
$password
n
EOF
