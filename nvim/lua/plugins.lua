-- manage plugins with lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
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
	require("plugins.ai"),
	require("plugins.fs"),
	require("plugins.ft.markdown"),
	require("plugins.ft.git"),
	require("plugins.move"),
	require("plugins.fcitx"),				-- input fix
	require("plugins.help"),
	require("plugins.misc"),
})
