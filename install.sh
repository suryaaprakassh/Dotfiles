<<<<<<< Updated upstream
=======
sudo apt update
sudo apt upgrade -y
sudo apt install build-essential git stow tmux python3 unzip python3-pip gettext python3-venv curl autojump zsh -y
git clone https://github.com/suryaaprakassh/Dotfiles ~/Dotfiles
cd 
mkdir Repos
cd Repos git clone https://github.com/neovim/neovim --depth=1
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
git checkout stable
sudo make install
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
git clone git://github.com/wting/autojump.git --depth=1
cd autojump
./install.py 
cd
source ~/.nvm/nvm.sh
nvm install --lts
curl -sS https://starship.rs/install.sh | sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.bashrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

cd 
rm -rf .bashrc .zshrc
mkdir .config
cd ~/Dotfiles
stow conf
stow home
cp -r ~/Dotfiles/nvim ~/.config/
>>>>>>> Stashed changes
