
echo "🥳Hello everyone! I'm Liniuxchan!"
while true; do
  read -p "🤗Tell me your vnc-password! :" password
  echo
  if [ ${#password} -ge 6 ]; then
    echo "😆!thx!"
    break
  else
    echo "😚6 or more!"
  fi
done
pkg install x11-repo && pkg update
pkg install openssl-tool tigervnc fluxbox firefox -y && pkg upgrade -y
#set -x
# パスワードを非表示で入力させて変数に保存
mkdir ~/.vnc
openssl req -x509 -new -keyout ~/.vnc/vncserver.key -out ~/.vnc/vncserver.crt -days 365 -nodes -subj "/C=JP/ST=vurtualTokyo/L=vurtual Shibuya/O=Liniuxchan and Friends/OU=playing with linux/CN=liniuxchan on your phone"
rm ~/.vnc/config
printf "SecurityTypes=X509Vnc\nX509Key=/data/data/com.termux/files/home/.vnc/vncserver.key\nX509Cert=/data/data/com.termux/files/home/.vnc/vncserver.crt\n" >> ~/.vnc/config
echo $password
# 自動的にパスワードを設定
rm /data/data/com.termux/files/usr/tmp/.X1-lock
rm /data/data/com.termux/files/usr/tmp/.X11-unix/X1
pkill vnc
echo -e "$password\n$password\nn" | vncserver :1
unset liniuxchan_your_vnc_password
#set
#set +x

