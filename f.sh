pkg install x11-repo && pkg update
pkg install tigervnc fluxbox firefox -y && pkg upgrade -y
set -x
# パスワードを非表示で入力させて変数に保存
echo "パスワードを入力してください:"
read -s liniuxchan_your_vnc_password

# パスワードを確認
echo "入力されたパスワードは変数に保存されました"

openssl genpkey -algorithm RSA -out private.key -aes256
openssl req -new -key private.key -out request.csr
openssl x509 -req -in request.csr -signkey private.key -out certificate.crt -days 365

unset liniuxchan_your_vnc_password
set
set +x

