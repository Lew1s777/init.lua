--This is my neovimrc based on lua
-- _   _         __     ___           ____   ____ 
--| \ | | ___  __\ \   / (_)_ __ ___ |  _ \ / ___|
--|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \| |_) | |    
--| |\  |  __/ (_) \ V / | | | | | | |  _ <| |___ 
--|_| \_|\___|\___/ \_/  |_|_| |_| |_|_| \_\\____|
--                                                
--
-- install plugin manager [packer](https://github.com/wbthomason/packer.nvim) with the command below
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim


--rm ~/.local/share/nvim/shada/main.shada


-- manageing plugins[./lua/plugins.lua]
require('plugins')
-- keyboard mapping[./lua/keymaps.lua]
require('keymaps')
-- local config[./lua/localconf.lua]
require('localconf')
--vim.cmd [[echo "Hello,archer!"]]
