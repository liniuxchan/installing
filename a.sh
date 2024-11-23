echo "Hi! I'm Liniux-chan."
read -sp "enter password" password
pkg update && pkg upgrade -y
pkg except -y
pkg install x11-repo
pkg install tigervnc -y
vncserver :1 -geometry 1280x720
except "Password:"
send "$password\r"
except "Verify:"
send "$password\r"
except "view-only also?"
send "\n"
