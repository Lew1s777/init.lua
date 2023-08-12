--keymap rc
--modify file below to change map "gx" "g%" to "dx" "d%"
--/usr/share/nvim/runtime/plugin/netrwPlugin.vim
--/usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
vim.g.mapleader = " "
vim.g.scriptleader = ","

require("keymap/disable")
require("keymap/basic")
require("keymap/bracket")
--require("keymap/french")
require("keymap/hop")
require("keymap/hex")
