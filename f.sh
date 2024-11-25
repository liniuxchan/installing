pkg install x11-repo && pkg update
pkg install tigervnc fluxbox firefox -y && pkg upgrade -y
set -x
# パスワードを非表示で入力させて変数に保存
echo "パスワードを入力してください:"
read -s liniuxchan_your_vnc_password

# パスワードを確認
echo "入力されたパスワードは変数に保存されました"
set +×
unset liniuxchan_your_vnc_password
set

