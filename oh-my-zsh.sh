sudo apt install unzip fontconfig -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
sh -c "$(wget https://github.com/source-foundry/Hack/releases/download/v3.003/Hack-v3.003-ttf.zip -O /tmp/Hack-v3.003-ttf.zip)"
unzip /tmp/Hack-v3.003-tff.zip
sudo mkdir /usr/share/fonts/
cp /tmp/ttf/Hack-Regular.ttf /usr/share/fonts
fc-cache -f -v
fc-list | grep "Hack"


cp zshrc ~/.zshrc
cp p10k.zsh ~/.p10k.zsh
sleep 2
source ~/.zshrc
