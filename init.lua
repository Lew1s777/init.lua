-- _   _         __     ___           ____   ____ 
--| \ | | ___  __\ \   / (_)_ __ ___ |  _ \ / ___|
--|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \| |_) | |    
--| |\  |  __/ (_) \ V / | | | | | | |  _ <| |___ 
--|_| \_|\___|\___/ \_/  |_|_| |_| |_|_| \_\\____|
--                                                
--If vim suddenly becomes jammed, try running the following command in ur shell.
--rm ~/.local/share/nvim/shada/main.shada

-- #install the plugin manager [packer](https://github.com/wbthomason/packer.nvim) with the command below
-- $  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim


-- manageing plugins[./lua/plugins.lua]
require('plugins')

-- local config[./lua/localconf.lua]
require('localconf')

-- keyboard mapping[./lua/keymapcolmak.lua]
require('keymap')
