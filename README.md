# My .config
## Installation

```shell
cd ~/.config
git init
git remote add origin https://github.com/phenix-chen/.config.git
git pull origin master

# set zsh
touch ~/.zshenv
echo "export ZDOTDIR=$HOME/.config/zsh" >> ~/.zshenv

# set zsh/local.zsh.template
vim local.zsh.template
cp local.zsh.template local.zsh
```

