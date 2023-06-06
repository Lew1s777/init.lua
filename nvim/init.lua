-- _   _         __     ___           ____   ____ 
--| \ | | ___  __\ \   / (_)_ __ ___ |  _ \ / ___|
--|  \| |/ _ \/ _ \ \ / /| | '_ ` _ \| |_) | |    
--| |\  |  __/ (_) \ V / | | | | | | |  _ <| |___ 
--|_| \_|\___|\___/ \_/  |_|_| |_| |_|_| \_\\____|
--                                                
--Read [README](./README.md) if you come up with problems.

-- [neovide(a 3rd party GUI client)](./lua/neovide.lua)
require('neovide')

-- [plugin](./lua/plugins.lua)
require('plugins')

-- [config](./lua/localconf.lua)
require('localconf')

-- [keybind](./lua/keymap.lua)
require('keymap')
