# Clone this repository in .config/
```bash
git clone git@github.com:jc-olalla/my_nvim_config.git ~/.config/nvim
```

# Download and install nvm
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.bashrc
```
Install Node.js (latest LTS)
```bash
nvm install --lts
```
Check with:
```bash
node -v
npm -v
```

# Install neovim
```bash
sudo apt update
sudo apt install neovim
```
If you don't have sudo rights. Download the AppImage:
```bash
wget https://github.com/neovim/neovim/releases/download/v0.11.4/nvim-linux-x86_64.appimage
```
Make it executable:
```bash
chmod u+x nvim-linux-x86_64.appimage
```
Run it:
```bash
./nvim-linux-x86_64.appimage
```
Move it to an appropriate location:
```bash
mkdir -p ~/bin
mv nvim-linux-x86_64.appimage ~/bin/nvim
chmod u+x ~/bin/nvim
```
Add alias in .bashrc
```bash
alias vi="~/bin/nvim"
alias vim="~/bin/nvim"
```
# Install vim-plug
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Start Neovim:
```bash
~/bin/nvim
```
Inside Neovim, run:
```bash
:PlugInstall
```bash
