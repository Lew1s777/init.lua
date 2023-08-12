-- type strange french letter conveniently
--vim.api.nvim_set_keymap (“n”, “<FRENCH>”, “\”, {})

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- à
map("i", "a<C-A>", "à", {})
map("i", "A<C-A>", "À", {})
-- â 
map("i", "a<C-A>", "â", {})
map("i", "A<C-A>", "Â", {})
-- æ 
map("i", "a<C-E>", "æ", {})
map("i", "A<C-E>", "Æ", {})
--map("i", "AE", "Æ", {})
-- ç 
map("i", "c<C->", "ç", {})
map("i", "C<C->", "Ç", {})
-- é 
map("i", "e<C->", "é", {})
map("i", "E<C->", "É", {})
-- è 
map("i", "e<C->", "è", {})
map("i", "E<C->", "È", {})
-- ê 
map("i", "e<C->", "ê", {})
map("i", "E<C->", "Ê", {})
-- ë 
map("i", "e<C->", "ë", {})
map("i", "E<C->", "Ë", {})
-- î 
map("i", "i<C->", "î", {})
map("i", "I<C->", "Î", {})
-- ï 
map("i", "i<C->", "ï", {})
map("i", "I<C->", "Ï", {})
-- ô 
map("i", "o<C->", "ô", {})
map("i", "O<C->", "Ô", {})
-- ö 
map("i", "o<C->", "ö", {})
map("i", "O<C->", "Ö", {})
-- œ 
map("i", "o<C->", "œ", {})
map("i", "O<C->", "Œ", {})
--map("i", "OE", "Œ", {})
-- ù 
map("i", "u<C->", "ù", {})
map("i", "U<C->", "Ù", {})
-- û 
map("i", "u<C->", "û", {})
map("i", "U<C->", "Û", {})
-- ü 
map("i", "u<C->", "ü", {})
map("i", "U<C->", "Ü", {})
-- €
map("i", "$<C-E>", "€", {})
map("i", "$<C-F>", "€", {})

