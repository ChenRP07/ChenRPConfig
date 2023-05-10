# NVim config
## Clone this project
`git clone -b nvim git@github.com:ChenRP07/ChenRPConfig.git`
## Move into your config path
`mv nvim ~/.config`
## Move clang-format and clangd into your config path
`mv .clangd ~/`

`mv .clang-format ~/`
## Update neovim to over 0.7.0
`sudo add-apt-repository ppa:neovim-ppa/stable`

`sudo apt update`

`sudo apt isntall neovim`

## Install packer.nvim
`git clone --depth 1 git@github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

## Update plugins
Open neovim

`nvim ~/.config/nvim/lua/plugins/plugins-setup.lua`

Save this file or input command `:PackerSync`, then restart nvim, all plugins will work now.

## NOTE
clang++ is recommanded to be the compiler instead of g++.
