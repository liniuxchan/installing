pkg install x11-repo && pkg update
pkg install openssl-tool tigervnc fluxbox firefox -y && pkg upgrade -y
set -x
# パスワードを非表示で入力させて変数に保存
echo "パスワードを入力してください:"
read -s liniuxchan_your_vnc_password

# パスワードを確認
echo "入力されたパスワードは変数に保存されました"

openssl req -x509 -newkey rsa:4096 -keyout ~/.vnc/vncserver.key -out ~/.vnc/vncserver.crt -days 365
echo "SecurityTypes=vencrypt,x509vnc/rX509Key=~/.vnc/myvnc.key/rX509Cert=~/.vnc/myvnc.crt"　> ~/.vnc/config
vncsever :1
unset liniuxchan_your_vnc_password
#set
set +x

