pkg install x11-repo && pkg update
pkg install openssl-tool tigervnc fluxbox firefox -y && pkg upgrade -y
#set -x
# パスワードを非表示で入力させて変数に保存
echo "🥳Hello everyone! I'm Liniuxchan!"
while true; do
  read -s -p "🤗Tell me your vnc-password! :" password
  echo
  if [ ${#password} -ge 6 ]; then
    echo "😆!thx!"
    break
  else
    echo "😚6 or more!"
  fi
done

mkdir ~/.vnc
openssl req -x509 -newkey rsa:4096 -keyout ~/.vnc/vncserver.key -out ~/.vnc/vncserver.crt -days 365 -nodes -subj "/C=JP/ST=vurtualTokyo/L=vurtual Shibuya/O=Liniuxchan and Friends/OU=playing with linux/CN=liniuxchan on your phone"
printf "SecurityTypes=vencrypt,x509vnc\nX509Key=~/.vnc/vncserver.key\nX509Cert=~/.vnc/myvncserver.crt\n" >> ~/.vnc/config

# 自動的にパスワードを設定
echo -e "$password\n$password\nn" | vncserver :1
unset liniuxchan_your_vnc_password
#set
#set +x

