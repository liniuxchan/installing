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
aterm -geometry 80x80+100+100
pkg install xrdp -y
pkg install libcrypt -y
xrdp
xrdp-sesman
whoami
sed -i "s/^username=.*/username=$(whoami)/" /data/data/com.termux/files/usr/etc/xrdp/xrdp.ini
sed -i "s/^port=.*/port=5901/" /data/data/com.termux/files/usr/etc/xrdp/xrdp.ini
pkg install xfce4 -y
