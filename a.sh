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
vncserver :1 <<EOF
$password
$password
n
EOF
vncserver -kill :1
vncserver :1 -geometry 1280x720
pkg install aterm -y
export DISPLAY=:1
aterm&
