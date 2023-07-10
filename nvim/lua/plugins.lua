-- _                              _           
--| | __ _ _____   _   _ ____   _(_)_ __ ___  
--| |/ _` |_  / | | | | '_ \ \ / / | '_ ` _ \ 
--| | (_| |/ /| |_| |_| | | \ V /| | | | | | |
--|_|\__,_/___|\__, (_)_| |_|\_/ |_|_| |_| |_|
--             |___/                          
--config.defaults.lazy = true
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy_keys = {
	{ cmd = "install", key = "i" },
	{ cmd = "update",  key = "u" },
	{ cmd = "sync",    key = "s" },
	{ cmd = "clean",   key = "C" },
	{ cmd = "check",   key = "c" },
	{ cmd = "log",     key = "l" },
	{ cmd = "restore", key = "rs" },
	{ cmd = "profile", key = "p" },
}
vim.g.mapleader = " "
vim.g.scriptleader = ","
vim.keymap.set("n", "<leader>l", ":Lazy<CR>", { noremap = true })

require("lazy").setup({
	--require("plugins.telescope").config,
	require("plugins.visual"),
	require("plugins.fun"),
	require("plugins.dev"),
	--require("plugins.snippets"),
	require("plugins.ft.markdown"),
	require("plugins.input"),
	require("plugins.call"),
	require("plugins.help"),
	require("plugins.startuptime"),
})
