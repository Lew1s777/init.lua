if vim.g.neovide then
	vim.o.guifont = "SauceCodePro Nerd Font Mono,Source Code Pro,monospace:h10" -- text below applies for VimScript
	vim.opt.linespace = 0
	vim.g.neovide_scale_factor = 0.8
	local alpha = function()													-- Helper function for transparency formatting
	  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
	end
	-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
	vim.g.neovide_transparency = 0.1
	vim.g.transparency = 0.8
	vim.g.neovide_background_color = "#0f1117" .. alpha()
	vim.g.neovide_hide_mouse_when_typing = true
end
