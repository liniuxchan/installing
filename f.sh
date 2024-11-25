pkg install x11-repo && pkg update
pkg install openssl-tool tigervnc fluxbox firefox -y && pkg upgrade -y
set -x
# パスワードを非表示で入力させて変数に保存
echo "🥳hello! I'm liniuxchan"
echo "🤗Tell me your vnc-password!"
while true; do
  read -s -p "Enter your VNC password (6 or more characters): " password
  echo
  if [ ${#password} -ge 6 ]; then
    echo "Password accepted."
    break
  else
    echo "Password must be at least 6 characters long."
  fi
done
echo "😆thx!"

mkdir ~/.vnc
openssl req -x509 -newkey rsa:4096 -keyout ~/.vnc/vncserver.key -out ~/.vnc/vncserver.crt -days 365 -nodes -subj "/C=JP/ST=vurtualTokyo/L=vurtual渋Shibuya/O=Liniuxchan and Friends/OU=playing with linux/CN=liniuxchan on your phone"
printf
'SecurityTypes=vencrypt,x509vnc\nX509Key=~/.vnc/myvnc.key\nX509Cert=~/.vnc/myvnc.crt'　> ~/.vnc/configLiniux
vncserver :1
unset liniuxchan_your_vnc_password
#set
set +x

