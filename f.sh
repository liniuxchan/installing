pkg install x11-repo && pkg update
pkg install openssl-tool tigervnc fluxbox firefox -y && pkg upgrade -y
set -x
# パスワードを非表示で入力させて変数に保存
echo "パスワードを入力してください:"
read -s liniuxchan_your_vnc_password

# パスワードを確認
echo "入力されたパスワードは変数に保存されました"

openssl genpkey -algorithm RSA -out vncserver.key -aes256
openssl req -new -key vncserver.key -out vncserver.csr
openssl x509 -req -days 365 -in vncserver.csr -signkey vncserver.key -out vncserver.crt

unset liniuxchan_your_vnc_password
set
set +x

