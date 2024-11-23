echo "Hi! I'm Liniux-chan."
read -sp "🤗Enter your password:" password
echo
pkg update && pkg upgrade -y
pkg install x11-repo
pkg install tigervnc -y
pkg install termux-auth -y
passwd <<EOF
$password
$password
n
EOF
vncserver <<EOF
$password
$password
n
EOF
vncserver :1 -geometry 1280x720

