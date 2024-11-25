pkg install x11-repo && pkg update
pkg install tigervnc fluxbox firefox -y && pkg upgrade -y

# パスワードを非表示で入力させて変数に保存
echo "パスワードを入力してください:"
read -s liniuxchan-vnc-password

# パスワードを確認
echo "入力されたパスワードは変数に保存されました"
