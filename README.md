# aZong's Dotfiles

## Installation

**_Note:_** Install my dotfiles using git command

```bash
git clone https://github.com/muazong/Dotfiles.git

# optional
rm -rf Dotfiles/.git
```

## Dotfiles details

#### Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/)

**_Note:_** I use Nala package manager but you can use APT instead.

- PPA:

```bash
sudo add-apt-repository ppa:yurivkhan/kitty
```

- Installation:

```bash
sudo nala install kitty -y
```

### Shell: [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

- Installation:

```bash
sudo nala install zsh -y
```

### Zsh manager: [Oh-My-Zsh](-https://ohmyz.sh/)

- Installation:

```bash
# Using Curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Using Wget
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

### Oh-My-Zsh plugins

- Git
- [nvm](https://github.com/nvm-sh/nvm)

```bash
# Using Curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash

# Using Wget
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash
```

- [zsh-vi-mode](https://github.com/jeffreytse/zsh-vi-mode)

```bash
git clone https://github.com/jeffreytse/zsh-vi-mode \
$ZSH_CUSTOM/plugins/zsh-vi-mode
```

- [fzf-zsh-plugin](https://github.com/unixorn/fzf-zsh-plugin)

```bash
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin
```

- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

- [Colorls](https://github.com/athityakumar/colorls)

```bash
# Warn: Required Ruby Gem
sudo gem install colorls

# Put this code in your zsh config file
source $(dirname $(gem which colorls))/tab_complete.sh
```

- [Zoxide](https://github.com/ajeetdsouza/zoxide)

```bash
curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash

cd ~/.local/share/bin && sudo mv zoxide /usr/bin

# Put this code in your zsh config file
eval "$(zoxide init zsh)"
```

### Terminal GUI File Manager: [Ranger](https://github.com/ranger/ranger)

- Plugins:

  - [Devicons](https://github.com/alexanderjeurissen/ranger_devicons)

  ```bash
  git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
  echo "default_linemode devicons" >> $HOME/.config/ranger/rc.conf
  ```

### Terminal Multiplexer: [Tmux](https://github.com/tmux/tmux/wiki)

- Installation:

```bash
# Tmux version 3.4
wget https://github.com/tmux/tmux/releases/download/3.4/tmux-3.4.tar.gz

# Required packages
sudo nala install libevent-dev ncurses-dev build-essential bison pkg-config -y

# Installation
tar -zxf tmux-*.tar.gz
cd tmux-*/
./configure
make && sudo make install
```

### Tmux plugins:

- Tmux plugins manager: [tpm](https://github.com/tmux-plugins/tpm)

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

- Theme: [Kanagawa-tmux](https://github.com/obergodmar/kanagawa-tmux)

```bash
set -g @plugin 'tyetyetye/kanagawa-tmux'
```

- Renumber session: [Tmux-auto-renumber-session](https://github.com/T1erno/tmux-auto-renumber-session)

```bash
set -g @plugin 'T1erno/tmux-auto-renumber-session'
```

- Tmux reload session: [Tmux-continuum](https://github.com/tmux-plugins/tmux-continuum)

```bash
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
```

- Tmux-options: [Tmux-sensible](https://github.com/tmux-plugins/tmux-sensible)

```bash
set -g @plugin 'tmux-plugins/tmux-sensible'
```

- Yank: [Tmux-yank](https://github.com/tmux-plugins/tmux-yank)

```bash
set -g @plugin 'tmux-plugins/tmux-yank'
```

### Terminal theme: Kanagawa-wave (in kitty folder)

### Font: [JetBrains Mono NerdFont](https://www.nerdfonts.com/)

**_Warn:_** Check the original website to get the latest version.

```bash
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
```

### Required for terminal and neovim

1. Nala

```bash
sudo apt install nala -y
```

2. npm

```bash
# Use nvm to install node
nvm install node
```

3. Python

```bash
sudo nala install pip python3-dev python3.10-venv -y

# support ranger preview image in kitty terminal
pip install pillow
```

4. Java and Javac

```bash
sudo nala install openjdk-18-jre-headless default-jdk -y
```

5. Ruby

```bash
  sudo nala install ruby ruby-dev -y
```

6. Lua

```bash
sudo nala install lua5.4 luarocks luajit -y
```

7. PHP

```bash
sudo nala install php-common libapache2-mod-php php-cli
```

8. Composer

```bash
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php\

php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

9. Golang

```bash
wget https://go.dev/dl/

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.5.linux-amd64.tar.gz

# Put this code in your zsh config file
export PATH=$PATH:/usr/local/go/bin
```

10. Rust

```bash
curl https://sh.rustup.rs -sSf | sh
```

11. Yarn

```bash
npm install -g yarn
```

12. Julia

```bash
curl -fsSL https://install.julialang.org | sh
```

### Text editor: Neovim - config with lua

**_Note:_** You can still download my own neovim configurations here without downloading the entire Dotfiles.

```bash
cd ~/.config && mkdir nvim
git clone https://github.com/muazong/Neovim.git
mv Neovim nvim

# optional
rm -rf Neovim/.git
```

- PPA:

```bash
# Stable
sudo add-apt-repository ppa:neovim-ppa/stable

# Unstable
sudo add-apt-repository ppa:neovim-ppa/unstable
```

- Installation

```bash
sudo nala install neovim -y
```

### Git

- Git PPA

```bash
sudo add-apt-repository ppa:git-core/ppa
```

- Git UI: LazyGit

```bash
# For Debian and Debian based distributions

cd ~/Downloads

LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
```
