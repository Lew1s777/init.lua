-- install the plugin manager [packer](https://github.com/wbthomason/packer.nvim) with the command below
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\
--  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
   -- Packer can manage itself
   use 'wbthomason/packer.nvim'

   -- completation
   use {'neoclide/coc.nvim', branch = 'release'}
   --use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}     --build coc from sourcecode
   use 'mzlogin/vim-markdown-toc'

   --file manager
   --use 'scrooloose/nerdtree'

   -- Status line
   use 'liuchengxu/eleline.vim'

   --markdown preview
   use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
end)

