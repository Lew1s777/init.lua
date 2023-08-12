local function imap(shotcut, key)
  vim.api.nvim_set_keymap("i", shotcut, key, {noremap = true})
end

imap( "<",	"<><left>" )
imap( "(",	"()<left>" )
imap( "[",	"[]<left>" )
imap( "{",	"{}<left>" )
imap( "《",	"《》<left>" )
