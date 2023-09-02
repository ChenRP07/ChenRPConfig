# Neovim configuration
## Install
`git clone -b neovim git@github.com:ChenRP07/ChenRPConfig.git`

`cd ChenRPConfig`

`cp -R ./nvim ~/.config/`

`cp -R ./clangd ~/.config/`

When using clang-format
`cp .clang-format YOUR-REPO-PATH`

When using wsl, move NoLsp.exe to your Win system and run `NoLsp.exe C:\windows\system32\wsl.exe`. Note: run it by admin and check your path to wsl.
## Requirements
### Neovim
`sudo add-apt-repository ppa:neovim-ppa/unstable`

`sudo apt update`

`sudo apt install neovim`

Make sure neovim version >= 0.8.0
### Dependency
Run `checkhealth` in neovim to install dependencies following the result.
### Packer.nvim
`git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
 or check packer.nvim[https://github.com/wbthomason/packer.nvim]

 Then open neovim with `nvim`, and run command `PackerSync` to download plugins
 ### Mason
 Install the following plugins by `i`.
 * bash-language-server
 * clang-format
 * clangd
 * cmake-language-server
 * cmakelang
 * cmakelint
 * codespell
 * commitlint
 * cpplint
 * docformatter
 * dockerfile-langurage-server
 * html-lsp
 * json-lsp
 * jsonlint
 * latexindent
 * lua-language-server
 * markdownlint
 * marksman
 * pylint
 * python-lsp-server
 * rust-analyzer
 * shellcheck
 * typescript-language-server
 * vim-language-server
 * yaml-language-server
 ### Nvim-tree-sitter
 Install the following plugins by `TSInstall`
 * bash
 * c
 * cmake
 * comment
 * cpp
 * css
 * csv
 * cuda
 * dockerfile
 * git_config
 * git_rebase
 * gitcommit
 * gitignore
 * go
 * html
 * javascript
 * json
 * latex
 * lua
 * make
 * markdown
 * markdown_inline
 * python
 * query
 * regex
 * rust
 * sql
 * typescript
 * vim
 * vimdoc
 * xml
 * yaml
 ### Terminal
 Make sure your terminal has nerd font. Check [https://www.nerdfonts.com/font-downloads] for all valid fonts.
