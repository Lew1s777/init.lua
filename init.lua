--This is my neovimrc based on lua
-- _   _         __     ___           ____   ____ 
--| \ | | ___  __\ \   / (_)_ __ ___ |  _ \ / ___|
--|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \| |_) | |    
--| |\  |  __/ (_) \ V / | | | | | | |  _ <| |___ 
--|_| \_|\___|\___/ \_/  |_|_| |_| |_|_| \_\\____|
--                                                
--If you find that vim suddenly becomes very jammed, try running the following command in ur shell.
--rm ~/.local/share/nvim/shada/main.shada
--
-- install the plugin manager [packer](https://github.com/wbthomason/packer.nvim) with the command below or with the aur package "aur/nvim-packer-git" if u r using arch linux
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

-- manageing plugins[./lua/plugins.lua]
require('plugins')
-- keyboard mapping[./lua/keymaps.lua]
require('keymaps')
-- local config[./lua/localconf.lua]
require('localconf')
--vim.cmd [[echo "Hello,archer!"]]
